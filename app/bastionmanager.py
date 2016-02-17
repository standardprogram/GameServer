

from gfirefly.server.globalobject import GlobalObject, remoteserviceHandle
from gfirefly.dbentrust.dbpool import dbpool

@remoteserviceHandle("gate")
def GetNearbyBastionList(data):
    return "GetNearByBastionList ok"

    
