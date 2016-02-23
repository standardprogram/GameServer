
import json
import base64
from gfirefly.server.globalobject import GlobalObject, remoteserviceHandle
from gfirefly.dbentrust.madminanager import MAdminManager
from gfirefly.dbentrust.mmode import MAdmin
from datamanager import UserDataTable


REQ_TYPE = 1

@remoteserviceHandle("gate")
def GetPlayerData(param):
    print(param)
    req = json.loads(param)

    response = UserDataTable.getObjData(req['uid'])
    response['avatar'] = base64.b64encode(response['avatar'])
    
    response['reqtype'] = REQ_TYPE
    response['reqcode'] = req['reqcode']

    return json.dumps(response)

    
