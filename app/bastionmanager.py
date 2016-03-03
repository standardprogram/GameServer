import json
import math
from gfirefly.server.globalobject import GlobalObject, remoteserviceHandle
from tool.datamanager import BastionDataTable


REQ_TYPE = 2

@remoteserviceHandle("gate")
def GetNearbyBastionList(param):
    print(param)
    req = json.loads(param)
    
    bastionlist = []
    
    lng = float(req['lng'])
    lat = float(req['lat'])
    
    pklist = BastionDataTable.getAllPkByFk(0)
    allBastions = BastionDataTable.getObjList(pklist)
    for bastion in allBastions:
        data = bastion.getData()
        lat2 = float(data['lat'])
        lng2 = float(data['lng'])
        distance = GetDistance(lat, lng, lat2, lng2)
        print(distance)
        if(distance < 3):
            bastionlist.append(data)
    
    
    response = {}
    response['list'] = bastionlist
    response['reqtype'] = REQ_TYPE
    response['reqcode'] = req['reqcode']

    return json.dumps(response)


EARTH_RADIUS = 6378.137   
def GetDistance(lat1, lng1, lat2, lng2):
    radLat1 = math.radians(lat1)
    radLat2 = math.radians(lat2)
    a = radLat1 - radLat2
    b = math.radians(lng1) - math.radians(lng2)
    
    s = 2 * math.asin(math.sqrt(math.pow(math.sin(a/2),2) 
            + math.cos(radLat1)*math.cos(radLat2)*math.pow(math.sin(b/2),2)))
    
    s = s*EARTH_RADIUS
    s = round(s*10000)/10000;
    return s