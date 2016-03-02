from gfirefly.server.globalobject import GlobalObject, rootserviceHandle


@rootserviceHandle
def PlayerEventHandle(data):
    return GlobalObject().root.callChild("player","GetPlayerData",data)

@rootserviceHandle
def PlayerReportLocation(data):
    return GlobalObject().root.callChild("player", "ReportLocation", data)

@rootserviceHandle
def BastionEventHandle(data):
    return GlobalObject().root.callChild("bastion","GetNearbyBastionList",data)