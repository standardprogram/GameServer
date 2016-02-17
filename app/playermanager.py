
import json
from gfirefly.server.globalobject import GlobalObject, remoteserviceHandle
from gfirefly.dbentrust.madminanager import MAdminManager
from gfirefly.dbentrust.mmode import MAdmin


def __init__(self):
    MAdminManager().registe("GameData")
    self.tbplayer = MAdmin("user", "uid")

@remoteserviceHandle("gate")
def GetPlayerData(uid):
    print(uid)

    playerData = self.tbplayer.getObjData(uid)   
    return json.dumps(playerData)

    
