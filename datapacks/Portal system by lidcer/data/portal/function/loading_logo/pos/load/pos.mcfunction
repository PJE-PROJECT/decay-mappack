


data modify storage minecraft:loadcoords x set from entity @e[tag=loadcoords,limit=1] data.x
data modify storage minecraft:loadcoords y set from entity @e[tag=loadcoords,limit=1] data.y
data modify storage minecraft:loadcoords z set from entity @e[tag=loadcoords,limit=1] data.z
data modify storage minecraft:loadcoords rotx set from entity @e[tag=loadcoords,limit=1] data.rotx
data modify storage minecraft:loadcoords roty set from entity @e[tag=loadcoords,limit=1] data.roty



function portal:loading_logo/pos/load/loadpos with storage minecraft:loadcoords
