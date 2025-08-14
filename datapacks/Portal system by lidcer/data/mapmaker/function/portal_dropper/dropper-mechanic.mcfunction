
execute positioned ~ ~2 ~ if entity @e[type=minecraft:glow_item_frame,distance=..2.3,tag=indicator,tag=active,limit=1] run setblock ~ ~2.5 ~ minecraft:redstone_block
execute positioned ~ ~2 ~ unless entity @e[type=minecraft:glow_item_frame,distance=..2.3,tag=indicator,tag=active,limit=1] if entity @e[type=minecraft:glow_item_frame,distance=..2.3,tag=indicator,tag=!active,limit=1] run setblock ~ ~2.5 ~ minecraft:air


execute if block ~ ~4 ~ minecraft:redstone_block run tag @s add active
execute if entity @s[tag=active,scores={animationtime=1449}] unless block ~ ~4 ~ minecraft:redstone_block run tag @s remove active
execute if block ~ ~3 ~ minecraft:air run kill @s
execute as @e[type=minecraft:armor_stand,tag=2pcd_rusted_opener] at @s if block ~ ~3 ~ minecraft:air run kill @s

execute if entity @s[tag=2pcd1,tag=active,tag=!useless,scores={animationtime=1449}] unless entity @e[type=minecraft:armor_stand,dy=3,distance=..3,tag=cube,tag=cubetag1,tag=hoverignore] run summon minecraft:armor_stand ~ ~3 ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,DisabledSlots:2037535,Tags:["por2s","cube","prop","hoverignore","cubetag1","laser_stop","markerignore"],Small:1b}
execute if entity @s[tag=2pcd2,tag=active,tag=!useless,scores={animationtime=1449}] unless entity @e[type=minecraft:armor_stand,dy=3,distance=..3,tag=cube,tag=cubetag2,tag=hoverignore] run summon minecraft:armor_stand ~ ~3 ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,DisabledSlots:2037535,Tags:["por2s","cube","prop","hoverignore","cubetag2","laser_stop","markerignore"],Small:1b}
execute if entity @s[tag=2pcd3,tag=active,tag=!useless,scores={animationtime=1449}] unless entity @e[type=minecraft:armor_stand,dy=3,distance=..3,tag=cube,tag=cubetag3,tag=hoverignore] run summon minecraft:armor_stand ~ ~3 ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,DisabledSlots:2037535,Tags:["por2s","cube","prop","hoverignore","cubetag3","laser_stop","markerignore"],Small:1b}
execute if entity @s[tag=2pcd4,tag=active,tag=!useless,scores={animationtime=1449}] unless entity @e[type=minecraft:armor_stand,dy=3,distance=..3,tag=cube,tag=cubetag4,tag=hoverignore] run summon minecraft:armor_stand ~ ~3 ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,DisabledSlots:2037535,Tags:["por2s","cube","prop","hoverignore","cubetag4","laser_stop","markerignore"],Small:1b}
execute if entity @s[tag=2pcd5,tag=active,tag=!useless,scores={animationtime=1449}] unless entity @e[type=minecraft:armor_stand,dy=3,distance=..3,tag=cube,tag=cubetag5,tag=hoverignore] run summon minecraft:armor_stand ~ ~3 ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,DisabledSlots:2037535,Tags:["por2s","cube","prop","hoverignore","cubetag5","laser_stop","markerignore"],Small:1b}
execute if entity @s[tag=active,scores={animationtime=1423}] run setblock ~ ~1 ~ minecraft:air
execute if entity @s[tag=active,scores={animationtime=1423}] run tag @e[type=minecraft:armor_stand,distance=..1.5,tag=cube,tag=hoverignore] remove hoverignore
execute if entity @s[tag=active] at @s unless score @s animationtime matches 1423 run setblock ~ ~1 ~ minecraft:iron_trapdoor[half=bottom]
execute if entity @s[tag=!2pcd_rusted] store result entity @s ArmorItems[3].components."minecraft:damage" int 1 run scoreboard players get @s animationtime


execute if entity @a[limit=1,distance=..10] run item replace entity @s[type=minecraft:armor_stand,tag=2pcd,tag=2pcd_rusted,tag=!useless,scores={animationtime=1449}] armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=95]




execute if entity @s[tag=2pcd_rusted,tag=!useless] unless score @s animationtime matches 1449 run item replace entity @s armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=96]

scoreboard players set @e[type=minecraft:armor_stand,tag=2pcd_rusted_opener] animationtime 8387188
execute as @e[type=minecraft:armor_stand,tag=2pcd_rusted_opener] at @s if entity @e[type=minecraft:armor_stand,distance=..2,tag=2pcd,tag=2pcd_rusted,tag=active,tag=!useless] run scoreboard players operation @s animationtime += @e[type=minecraft:armor_stand,distance=..2,tag=2pcd,tag=2pcd_rusted,tag=active,tag=!useless] animationtime
execute as @e[type=minecraft:armor_stand,tag=2pcd_rusted_opener] store result entity @s ArmorItems[3].components."minecraft:potion_contents".custom_color int 1 run scoreboard players get @s animationtime
execute as @e[type=minecraft:armor_stand,tag=2pcd_rusted_opener] if score @s animationtime matches 8387188 run data modify entity @s ArmorItems[3].components."minecraft:potion_contents".custom_color set value 8388637
execute if entity @s[tag=2pcd_rusted,tag=!useless] positioned ~ ~3 ~ run tag @e[type=minecraft:armor_stand,distance=..1,tag=cube,limit=1] add rusted

execute if entity @s[tag=active,scores={animationtime=1448}] if entity @e[type=minecraft:armor_stand,distance=..1.2,tag=cube,tag=hoverignore,limit=1] run playsound minecraft:dropper_iris_open_01 ambient @a ~ ~ ~ 0.05 1 0
execute if entity @s[tag=active,scores={animationtime=1424}] unless entity @e[type=minecraft:armor_stand,distance=..3,tag=cube,tag=hoverignore,limit=1] unless entity @e[type=minecraft:armor_stand,distance=..3,tag=cube,tag=hovering,limit=1] run playsound minecraft:dropper_iris_close_01 ambient @a ~ ~ ~ 0.05 1 0

execute if entity @s[tag=active] at @s run function mapmaker:portal_dropper/cube_drop


execute if entity @s[tag=2pcd_c,tag=active,tag=!useless,scores={animationtime=1449}] positioned ~ ~3 ~ run tag @e[type=minecraft:armor_stand,distance=..1,tag=cube,tag=por2s,limit=1] add por2c
execute if entity @s[tag=2pcd_c,tag=active,tag=!useless,scores={animationtime=1449}] positioned ~ ~3 ~ run tag @e[type=minecraft:armor_stand,distance=..1,tag=cube,tag=por2s,tag=por2c,limit=1] remove por2s

execute if entity @s[tag=2pcd_laser,tag=active,tag=!useless,scores={animationtime=1449}] positioned ~ ~3 ~ run tag @e[type=minecraft:armor_stand,distance=..1,tag=cube,tag=por2s,limit=1] add laser_cube
execute if entity @s[tag=2pcd_laser,tag=active,tag=!useless,scores={animationtime=1449}] positioned ~ ~3 ~ run tag @e[type=minecraft:armor_stand,distance=..1,tag=cube,tag=por2s,limit=1] add laser_cube_new
execute if entity @s[tag=2pcd_laser,tag=active,tag=!useless,scores={animationtime=1449}] positioned ~ ~3 ~ run tag @e[type=minecraft:armor_stand,distance=..1,tag=cube,tag=por2s,tag=laser_cube,limit=1] remove por2s
execute if entity @s[tag=2pcd_laser,tag=active,tag=!useless,scores={animationtime=1449}] positioned ~ ~3 ~ run tag @e[type=minecraft:armor_stand,distance=..1,tag=cube,tag=laser_stop,tag=laser_cube,limit=1] remove laser_stop
