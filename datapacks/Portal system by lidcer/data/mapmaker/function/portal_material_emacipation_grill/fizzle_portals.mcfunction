execute if score gunhold config matches 1 if entity @e[tag=sbpg.portal,limit=1] run function portalgun_anims:portalgundryfire
playsound minecraft:portal_fizzle_2 ambient @a ~ ~ ~ 1 1 1
function hard_light_bridge:delete
tag @e[tag=laser_cube] remove active
kill @e[type=minecraft:marker,tag=laser_end]


execute at @e[type=minecraft:area_effect_cloud,tag=sbpg.portal,limit=2] run playsound minecraft:portal_close_2 ambient @a ~ ~ ~ 1 1 0

execute if score pguncol config matches 1 run kill @e[tag=sbpg.portal,tag=sbpg.portal_first,limit=4]
execute if score pguncol config matches 2 run kill @e[tag=sbpg.portal,tag=sbpg.portal_second,limit=4]
execute if score pguncol config matches 0 run kill @e[tag=sbpg.portal,limit=4]
tag @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_main,tag=sbpg.active] remove sbpg.active
function excursion_funnel:update