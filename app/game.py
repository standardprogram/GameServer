'''
Created on 2015��10��19��

@author: Administrator
'''

from gfirefly.server.globalobject import netserviceHandle

@netserviceHandle
def echo_1(_conn,data):
    return data

    
