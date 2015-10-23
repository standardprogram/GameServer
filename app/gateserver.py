

from gfirefly.server.globalobject import GlobalObject, rootserviceHandle

@rootserviceHandle
def roothandle(data):
    return "gate ok"

@rootserviceHandle
def game1handle(data):
    return GlobalObject().root.callChild("player","game1end",data)