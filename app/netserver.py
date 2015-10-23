

from gfirefly.server.globalobject import GlobalObject, netserviceHandle

@netserviceHandle
def nethandle_110(_conn, data):
    return "nethandle_110 ok"
    
@netserviceHandle
def nethandle_120(_conn, data):
    return GlobalObject().remote["gate"].callRemote("game1handle",data)