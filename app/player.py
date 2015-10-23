

from gfirefly.server.globalobject import GlobalObject, remoteserviceHandle

@remoteserviceHandle("gate")
def game1end(data):
    return "echo_1 ok"

    
