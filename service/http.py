'''
Created on 2015��10��21��

@author: Administrator
'''

from gfirefly.server.globalobject import webserviceHandle

@webserviceHandle
def echo_1(_conn,data):
    return data

    
