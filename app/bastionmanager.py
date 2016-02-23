
import math
from gfirefly.server.globalobject import GlobalObject, remoteserviceHandle
from datamanager import BastionDataTable

@remoteserviceHandle("gate")
def GetNearbyBastionList(param):
    print(param)
    req = json.loads(param)
    
    bastionlist = []
    
    lng = float(req['lng'])
    lat = float(req['lat'])
    
    pklist = BastionDataTable.getAllPkByFk()
    allBastions = BastionDataTable.getObjList(pklist)
    for bastion in allBastions:
        if(GetDistance(lat, lng, bastion['lat'], bastion['lng']) < 3000):
            bastionlist.append(bastion)
        
    
    return json.dumps(bastionlist)


EARTH_RADIUS = 6378.137   
def GetDistance(lat1, lng1, lat2, lng2):
    radLat1 = math.radians(lat1)
    radLat2 = math.radians(lat2)
    a = radLat1 - radLat2
    b = math.radians(lng1) - math.radians(lng2)
    
    s = 2 * math.asin(math.sqrt(Math.Pow(math.sin(a/2),2) 
            + math.cos(radLat1)*math.cos(radLat2)*math.pow(math.sin(b/2),2)))
    
    s = s*EARTH_RADIUS
    s = math.Round(s*10000)/10000;
    return s