

from gfirefly.server.globalobject import GlobalObject, remoteserviceHandle
import json


@remoteserviceHandle("gate")
def GetPlayerData(data):
    print(data)
    
    
    dic = {}
    dic["respId"] = 1001
    dic["uid"] = data

    '''
    uid = "0001"
    openid = ""
    nickname = ""
    avatar = ""
    gender = ""
    camp = ""
    
    exp = 1000
    level = 2
    energyMax = 0
    energy = 0
    
    lat = 0.0
    lng = 0.0
    '''
    
    
    return json.dumps(dic)

    
