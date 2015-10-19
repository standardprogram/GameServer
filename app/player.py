'''
Created on 2015Äê10ÔÂ19ÈÕ

@author: Administrator
'''

from gfirefly.server.globalobject import netserviceHandle

@netserviceHandle
def echo_1(_conn,data):
    return data

    
