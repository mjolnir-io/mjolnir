#import "helpers.h"

static int ipcmod;

CFDataRef ipc_callback(CFMessagePortRef local, SInt32 msgid, CFDataRef data, void *info) {
    lua_State* L = (lua_State*) info;
    
    CFStringRef instr = CFStringCreateFromExternalRepresentation(NULL, data, kCFStringEncodingUTF8);
    const char* cinstr = CFStringGetCStringPtr(instr, kCFStringEncodingUTF8);
    
    lua_rawgeti(L, LUA_REGISTRYINDEX, ipcmod);
    int stack_size = 0;
    
    lua_getfield(L, -1, "_handler");
    stack_size++;
    
    lua_pushboolean(L, cinstr[0] == 'r');
    lua_pushstring(L, cinstr+1);
    
    const char* result = "";
    
    if (lua_pcall(L, 2, 1, 0)) {
        hydra_handle_error(L);
    }
    
    else {
        result = lua_tostring(L, -1);
        stack_size++;
    }
    
    CFStringRef outstr = CFStringCreateWithCString(NULL, result, kCFStringEncodingUTF8);
    CFDataRef outdata = CFStringCreateExternalRepresentation(NULL, outstr, kCFStringEncodingUTF8, 0);
    
    CFRelease(outstr);
    CFRelease(instr);
    lua_pop(L, stack_size);
    
    return outdata;
}

static void setup_ipc(lua_State *L) {
    CFMessagePortContext context = {
        .version = 0,
        .release = NULL,
        .retain = NULL,
        .copyDescription = NULL,
        .info = (void*) L
    };
    
    CFMessagePortRef messagePort = CFMessagePortCreateLocal(NULL, CFSTR("hydra"), ipc_callback, &context, false);
    CFRunLoopSourceRef runloopSource = CFMessagePortCreateRunLoopSource(NULL, messagePort, 0);
    CFRunLoopAddSource(CFRunLoopGetMain(), runloopSource, kCFRunLoopCommonModes);
    
}

int luaopen_ipc(lua_State* L) {
    lua_newtable(L);
    lua_pushvalue(L, -1);
    ipcmod = luaL_ref(L, LUA_REGISTRYINDEX);
    
    setup_ipc(L);
    return 1;
}
