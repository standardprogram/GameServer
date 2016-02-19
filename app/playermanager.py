
import json
from gfirefly.server.globalobject import GlobalObject, remoteserviceHandle
from gfirefly.dbentrust.madminanager import MAdminManager
from gfirefly.dbentrust.mmode import MAdmin


def Init():
    MAdminManager().registe("GameData")

    _userAdmin = MAdmin('user', 'uid') 

@remoteserviceHandle("gate")
def GetPlayerData(param):
    print(param)
    d = json.loads(param)
    MAdminManager().registe("GameData")

    _userAdmin = MAdmin('user', 'uid') 
    response = _userAdmin.getObjData(d['uid'])
    response['reqtype'] = 1
    response['reqcode'] = d['reqcode']

    return json.dumps(response)

    
