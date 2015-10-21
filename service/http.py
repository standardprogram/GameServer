'''
Created on 2015Äê10ÔÂ21ÈÕ

@author: Administrator
'''

from gfirefly.server.globalobject import webserviceHandle

@webserviceHandle
def echo_1(_conn,data):
    return data

    
