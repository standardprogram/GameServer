

from gfirefly.server.globalobject import GlobalObject, netserviceHandle


@netserviceHandle
def nethandle_1001(_conn, data):
    return GlobalObject().remote["gate"].callRemote("PlayerEventHandle", data)


@netserviceHandle
def nethandle_2001(_conn, data):
    return GlobalObject().remote["gate"].callRemote("BastionEventHandle",data)