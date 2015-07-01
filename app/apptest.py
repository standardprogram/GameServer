#coding:utf8

from firefly.server.globalobject import netserviceHandle

@netserviceHandle
def echo_1(_conn,data):
    return data

    


def abc():
    pass