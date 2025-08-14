


data modify storage minecraft:loadcoords x set from entity @e[tag=loadcoords,limit=1] data.x
data modify storage minecraft:loadcoords y set from entity @e[tag=loadcoords,limit=1] data.y
data modify storage minecraft:loadcoords z set from entity @e[tag=loadcoords,limit=1] data.z
data modify storage minecraft:loadcoords rotx set from entity @e[tag=loadcoords,limit=1] data.rotx
data modify storage minecraft:loadcoords roty set from entity @e[tag=loadcoords,limit=1] data.roty



function saves:loadpos with storage minecraft:loadcoords

#tp @a[tag=test_subject] @e[type=minecraft:armor_stand,tag=saved_player_pos,limit=1]


scoreboard players set update load 1
#schedule function saves:load_quick 20t


#function saves:load_quick
attribute @a[limit=1] minecraft:generic.gravity base set 0