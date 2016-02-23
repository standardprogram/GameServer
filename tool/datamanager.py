
from gfirefly.dbentrust.madminanager import MAdminManager
from gfirefly.dbentrust.mmode import MAdmin


GameDataAdmin = MAdminManager().registe("GameData")
UserDataTable = MAdmin('user', 'uid') 
BastionDataTable = MAdmin('bastion', 'id')