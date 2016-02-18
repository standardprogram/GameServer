
import json
from gfirefly.server.globalobject import GlobalObject, remoteserviceHandle
from gfirefly.dbentrust.madminanager import MAdminManager
from gfirefly.dbentrust.mmode import MAdmin



@remoteserviceHandle("gate")
def GetPlayerData(uid):
    print(uid)
    MAdminManager().registe("GameData")

    tbplayer = MAdmin("user", "uid")
    print(tbplayer)
    playerData = tbplayer.getObjData(uid)
    print(playerData)
    
    
    
    return json.dumps(playerData)

    
