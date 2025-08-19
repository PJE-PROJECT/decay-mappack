scoreboard players set update map 0
scoreboard players set lightresume map 0

execute if entity @e[type=item_display,tag=playerstart,tag=wakeup_anim,distance=..2] run function portal:wakeup_anim/start

tag @e[type=minecraft:armor_stand,tag=button_pedestal_base,tag=activated] remove activated
kill @e[tag=loading_logo_stand]
kill @e[tag=loading_logo_p]

kill @e[tag=cube,tag=!hoverignore]
kill @e[type=minecraft:armor_stand,tag=radio,tag=prop,tag=!hoverignore]
kill @e[type=minecraft:armor_stand,tag=portalcamera_unmount,tag=prop]
kill @e[tag=sbpg.portal]
kill @e[tag=pic]
kill @e[tag=laser]
kill @e[tag=laser_end]
kill @e[tag=gel]
kill @e[tag=ambient.sound.icon]

##CUBES
execute positioned as @e[type=item_display,tag=cube_spawn] run summon armor_stand ~ ~ ~ {Tags:["cube","prop"],Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,DisabledSlots:2037535,Small:1b}
execute as @e[type=item_display,tag=cube_spawn] positioned as @s run tp @e[type=armor_stand,tag=cube,distance=..0.1,limit=1] @s
execute positioned as @e[type=item_display,tag=cube_spawn] run tp @e[type=armor_stand,tag=cube,distance=..0.1,limit=1] ~ ~-1.2 ~
execute positioned as @e[type=item_display,tag=cube_spawn,tag=cube_spawn_standart] positioned ~ ~-1.2 ~ run tag @e[type=armor_stand,tag=cube,distance=..0.1,limit=1] add por2s
execute positioned as @e[type=item_display,tag=cube_spawn,tag=cube_spawn_companion] positioned ~ ~-1.2 ~ run tag @e[type=armor_stand,tag=cube,distance=..0.1,limit=1] add por2c
execute positioned as @e[type=item_display,tag=cube_spawn,tag=cube_spawn_laser] positioned ~ ~-1.2 ~ run tag @e[type=armor_stand,tag=cube,distance=..0.1,limit=1] add laser_cube
execute positioned as @e[type=item_display,tag=cube_spawn,tag=cube_spawn_laser] positioned ~ ~-1.2 ~ run tag @e[type=armor_stand,tag=cube,distance=..0.1,limit=1] add laser_cube_new
execute positioned as @e[type=item_display,tag=cube_spawn,tag=rusted] positioned ~ ~-1.2 ~ run tag @e[type=armor_stand,tag=cube,distance=..0.1,limit=1] add rusted

execute positioned as @e[type=item_display,tag=cube_spawn1] positioned ~ ~-1.2 ~ run tag @e[type=armor_stand,tag=cube,distance=..0.1,limit=1] add cubetag1
execute positioned as @e[type=item_display,tag=cube_spawn2] positioned ~ ~-1.2 ~ run tag @e[type=armor_stand,tag=cube,distance=..0.1,limit=1] add cubetag2
execute positioned as @e[type=item_display,tag=cube_spawn3] positioned ~ ~-1.2 ~ run tag @e[type=armor_stand,tag=cube,distance=..0.1,limit=1] add cubetag3
execute positioned as @e[type=item_display,tag=cube_spawn4] positioned ~ ~-1.2 ~ run tag @e[type=armor_stand,tag=cube,distance=..0.1,limit=1] add cubetag4
execute positioned as @e[type=item_display,tag=cube_spawn5] positioned ~ ~-1.2 ~ run tag @e[type=armor_stand,tag=cube,distance=..0.1,limit=1] add cubetag5

function excursion_funnel:update
function hard_light_bridge:delete
function mapmaker:portal_pgun/activate_all
tag @e[tag=custom_trigger,tag=activated] remove activated

#VERT DOOR
execute as @e[type=minecraft:item_display,tag=vertdoor,tag=broken,tag=saved] at @s run function mapmaker:portal_vertdoor/reset_partial
execute as @e[type=minecraft:item_display,tag=vertdoor,tag=auto,tag=saved,tag=!broken] at @s run function mapmaker:portal_vertdoor/reset_partial

#CAMERAS
item replace entity @e[type=item_display,tag=portalcam_head_2] container.0 with diamond_hoe[minecraft:damage=1508,minecraft:unbreakable={}]
item replace entity @e[type=item_display,tag=portalcam_base_2] container.0 with diamond_hoe[minecraft:damage=1509,minecraft:unbreakable={}]

item replace entity @e[type=item_display,tag=portalcam_head_1] container.0 with netherite_shovel[custom_model_data=18]
item replace entity @e[type=item_display,tag=portalcam_base_1] container.0 with netherite_shovel[custom_model_data=17]
tag @e[tag=cam,tag=destroyed] remove destroyed
tag @e[tag=cam,tag=unmount] remove unmount

#ARM64
tag @e[type=minecraft:item_display,tag=arm64,tag=error,tag=arm_anim] remove arm_anim
tag @e[type=minecraft:item_display,tag=arm64,tag=headbut,tag=arm_anim] remove arm_anim

# MOTION BLUR
execute if score motion_blur config matches 0 run kill @e[type=minecraft:item_display,tag=motion_blur,distance=..200]

tp @e[tag=collus] 0 -666 0
kill @e[tag=collus]
tag @e[tag=cube,tag=ID] remove ID
item replace entity @e[type=minecraft:item_display,tag=portal_spawner_lights] container.0 with minecraft:air

execute as @a[limit=1] at @s run function saves:save_quick
attribute @a[limit=1] minecraft:generic.gravity base set 0.08

execute at @a[limit=1] run function elevator:reset_arrival
execute at @a[limit=1] run function elevator:reset_departure




execute as @a[limit=1] at @s if entity @e[tag=elevator_main_pos,tag=arrival,distance=..5] if score elevator_arrival time matches 0 run function elevator:arrival_go