
scoreboard players set update load 0
scoreboard players set lightresume load 0

tp @a[tag=test_subject] @e[type=minecraft:marker,tag=savedplayercoords,limit=1]

kill @e[type=minecraft:armor_stand,tag=cube,tag=!hoverignore]
kill @e[type=minecraft:armor_stand,tag=radio,tag=prop,tag=!hoverignore]
kill @e[type=minecraft:armor_stand,tag=portalcamera_unmount,tag=prop]
kill @e[tag=sbpg.portal]
kill @e[tag=pic]
kill @e[tag=laser]
kill @e[tag=laser_end]
kill @e[tag=gel]
tp @e[tag=collus] 0 -666 0
kill @e[tag=collus]
tag @e[tag=cube,tag=hoverignore,tag=ID] remove ID
function excursion_funnel:update
function hard_light_bridge:delete
tag @a remove itempicker_activated
tag @a[limit=1] remove gel_stand_orange
tag @a[limit=1] remove gel_stand_blue

#ELEVATORS
execute at @a[limit=1] if entity @e[type=minecraft:item_display,tag=elevator_main_pos,tag=arrival,distance=..6,limit=1] run function elevator:reset_arrival
execute at @a[limit=1] run function elevator:reset_departure
execute as @a[limit=1] at @s if entity @e[tag=elevator_main_pos,tag=arrival,distance=..5] if score elevator_arrival time matches 0 run function elevator:arrival_go

#BUTTONS
tag @e[type=minecraft:armor_stand,tag=button_pedestal_base,tag=active_saved,tag=!activated] add activated
tag @e[type=minecraft:armor_stand,tag=button_pedestal_base,tag=activated,tag=!active_saved] remove activated
#PORTALGUNS
function mapmaker:portal_pgun/activate_all
execute as @e[type=minecraft:item_display,tag=v_portalgun,tag=!saved] run item replace entity @s container.0 with minecraft:air
execute as @e[type=minecraft:item_display,tag=v_portalgun,tag=!saved] run tag @s add picked

#TRIGGERS
tag @e[type=minecraft:interaction,tag=custom_trigger,tag=activated,tag=!looped] remove activated
tag @e[type=minecraft:interaction,tag=custom_trigger,tag=saved,tag=!looped] add activated



#VERT DOOR
execute as @e[type=minecraft:item_display,tag=vertdoor,tag=broken,tag=saved] at @s run function mapmaker:portal_vertdoor/reset_partial
execute as @e[type=minecraft:item_display,tag=vertdoor,tag=auto,tag=saved,tag=!broken] at @s run function mapmaker:portal_vertdoor/reset_partial

scoreboard players set loading workspace 1

#MOTION BLUR
execute if score motion_blur config matches 0 run kill @e[type=minecraft:item_display,tag=motion_blur,distance=..200]

#PORTALS
scoreboard players set colour workspace 24831
execute at @e[tag=saved_portal_first_pos,tag=N,tag=!D,tag=!U,tag=!45_portal_pos] align xyz positioned ~ ~ ~1 run function portal_blue:orange/portal_south
execute at @e[tag=saved_portal_first_pos,tag=S,tag=!D,tag=!U,tag=!45_portal_pos] align xyz positioned ~ ~ ~-1 run function portal_blue:orange/portal_north
execute at @e[tag=saved_portal_first_pos,tag=E,tag=!D,tag=!U,tag=!45_portal_pos] align xyz positioned ~-1 ~ ~ run function portal_blue:orange/portal_west
execute at @e[tag=saved_portal_first_pos,tag=W,tag=!D,tag=!U,tag=!45_portal_pos] align xyz positioned ~1 ~ ~ run function portal_blue:orange/portal_east

execute at @e[tag=saved_portal_first_pos,tag=N,tag=D,tag=!45_portal_pos] align xyz positioned ~ ~2 ~ run function portal_blue:orange/portal_down/south
execute at @e[tag=saved_portal_first_pos,tag=S,tag=D,tag=!45_portal_pos] align xyz positioned ~ ~2 ~-1 run function portal_blue:orange/portal_down/north
execute at @e[tag=saved_portal_first_pos,tag=E,tag=D,tag=!45_portal_pos] align xyz positioned ~-1 ~2 ~ run function portal_blue:orange/portal_down/west
execute at @e[tag=saved_portal_first_pos,tag=W,tag=D,tag=!45_portal_pos] align xyz positioned ~ ~2 ~ run function portal_blue:orange/portal_down/east

execute at @e[tag=saved_portal_first_pos,tag=N,tag=U,tag=!45_portal_pos] align xyz positioned ~ ~1 ~ run function portal_blue:orange/portal_up/north
execute at @e[tag=saved_portal_first_pos,tag=S,tag=U,tag=!45_portal_pos] align xyz positioned ~ ~1 ~ run function portal_blue:orange/portal_up/south
execute at @e[tag=saved_portal_first_pos,tag=E,tag=U,tag=!45_portal_pos] align xyz positioned ~ ~1 ~ run function portal_blue:orange/portal_up/east
execute at @e[tag=saved_portal_first_pos,tag=W,tag=U,tag=!45_portal_pos] align xyz positioned ~-1 ~1 ~ run function portal_blue:orange/portal_up/west

execute at @e[tag=saved_portal_first_pos,tag=N,tag=45_portal_pos] align xyz positioned ~ ~0.4 ~0.4 run function portal_blue:orange/45/portal_north
execute at @e[tag=saved_portal_first_pos,tag=S,tag=45_portal_pos] align xyz positioned ~ ~0.4 ~0.6 run function portal_blue:orange/45/portal_south
execute at @e[tag=saved_portal_first_pos,tag=E,tag=45_portal_pos] align xyz positioned ~0.6 ~0.4 ~ run function portal_blue:orange/45/portal_east
execute at @e[tag=saved_portal_first_pos,tag=W,tag=45_portal_pos] align xyz positioned ~0.4 ~0.4 ~ run function portal_blue:orange/45/portal_west

scoreboard players set colour workspace 16739586
execute at @e[tag=saved_portal_second_pos,tag=N,tag=!D,tag=!U] align xyz positioned ~ ~ ~1 run function portal:orange/portal_south
execute at @e[tag=saved_portal_second_pos,tag=S,tag=!D,tag=!U] align xyz positioned ~ ~ ~-1 run function portal:orange/portal_north
execute at @e[tag=saved_portal_second_pos,tag=E,tag=!D,tag=!U] align xyz positioned ~-1 ~ ~ run function portal:orange/portal_west
execute at @e[tag=saved_portal_second_pos,tag=W,tag=!D,tag=!U] align xyz positioned ~1 ~ ~ run function portal:orange/portal_east

execute at @e[tag=saved_portal_second_pos,tag=N,tag=D] align xyz positioned ~ ~2 ~ run function portal:orange/portal_down/south
execute at @e[tag=saved_portal_second_pos,tag=S,tag=D] align xyz positioned ~ ~2 ~-1 run function portal:orange/portal_down/north
execute at @e[tag=saved_portal_second_pos,tag=E,tag=D] align xyz positioned ~-1 ~2 ~ run function portal:orange/portal_down/west
execute at @e[tag=saved_portal_second_pos,tag=W,tag=D] align xyz positioned ~ ~2 ~ run function portal:orange/portal_down/east

execute at @e[tag=saved_portal_second_pos,tag=N,tag=U] align xyz positioned ~ ~1 ~ run function portal:orange/portal_up/north
execute at @e[tag=saved_portal_second_pos,tag=S,tag=U] align xyz positioned ~ ~1 ~ run function portal:orange/portal_up/south
execute at @e[tag=saved_portal_second_pos,tag=E,tag=U] align xyz positioned ~ ~1 ~ run function portal:orange/portal_up/east
execute at @e[tag=saved_portal_second_pos,tag=W,tag=U] align xyz positioned ~-1 ~1 ~ run function portal:orange/portal_up/west

execute at @e[tag=saved_portal_second_pos,tag=N,tag=45_portal_pos] align xyz positioned ~ ~0.4 ~0.4 run function portal:orange/45/portal_north
execute at @e[tag=saved_portal_second_pos,tag=S,tag=45_portal_pos] align xyz positioned ~ ~0.4 ~0.6 run function portal:orange/45/portal_south
execute at @e[tag=saved_portal_second_pos,tag=E,tag=45_portal_pos] align xyz positioned ~0.6 ~0.4 ~ run function portal:orange/45/portal_east
execute at @e[tag=saved_portal_second_pos,tag=W,tag=45_portal_pos] align xyz positioned ~0.4 ~0.4 ~ run function portal:orange/45/portal_west

execute as @e[type=minecraft:marker,tag=playerstartcoords,tag=played] if score @s map > saved map run tag @s remove played
execute as @e[type=minecraft:marker,tag=playerstartcoords,tag=!played] if score @s map <= saved map run tag @s add played

#SCOREBOARDS
scoreboard players set loading workspace 0
scoreboard players operation gunhold config = gunhold_saved map
scoreboard players operation pguncol config = pguncol_saved map
scoreboard players operation current map = saved map



#CUBES
execute at @e[tag=saved_cube_pos] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,DisabledSlots:2037535,Tags:["cube","prop","markerignore"],Small:1b}
execute at @e[tag=saved_cube_pos,tag=saved_cubetag1] run tag @e[distance=..0.1,tag=cube,limit=1] add cubetag1
execute at @e[tag=saved_cube_pos,tag=saved_cubetag2] run tag @e[distance=..0.1,tag=cube,limit=1] add cubetag2
execute at @e[tag=saved_cube_pos,tag=saved_cubetag3] run tag @e[distance=..0.1,tag=cube,limit=1] add cubetag3
execute at @e[tag=saved_cube_pos,tag=saved_cubetag4] run tag @e[distance=..0.1,tag=cube,limit=1] add cubetag4
execute at @e[tag=saved_cube_pos,tag=saved_cubetag5] run tag @e[distance=..0.1,tag=cube,limit=1] add cubetag5
execute at @e[tag=saved_cube_pos,tag=saved_por2s] run tag @e[distance=..0.1,tag=cube,limit=1] add por2s
execute at @e[tag=saved_cube_pos,tag=saved_por2c] run tag @e[distance=..0.1,tag=cube,limit=1] add por2c
execute at @e[tag=saved_cube_pos,tag=saved_laser_cube] run tag @e[distance=..0.1,tag=cube,limit=1] add laser_cube
execute at @e[tag=saved_cube_pos,tag=saved_laser_cube] run tag @e[distance=..0.1,tag=cube,limit=1] add laser_cube_new
execute at @e[tag=saved_cube_pos,tag=saved_rusted] run tag @e[distance=..0.1,tag=cube,limit=1] add rusted
execute as @e[tag=cube] at @s run tp @s @e[distance=..0.1,tag=saved_cube_pos,limit=1]
function id_datapack:loop

#RADIO
execute at @e[type=minecraft:marker,tag=saved_radio_pos] run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:potion",components:{"minecraft:custom_model_data":16,"minecraft:potion_contents":{custom_color:0}},count:1}],DisabledSlots:2037535,Tags:["radio","prop"]}
execute as @e[type=minecraft:armor_stand,tag=radio] at @s run tp @s @e[distance=..0.1,tag=saved_radio_pos,limit=1]

#CAMERAS
execute at @e[type=minecraft:marker,tag=saved_camera_unmount_pos,tag=saved_portalcamera_unmount_1] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:0b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":20,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["portalcamera_unmount","portalcamera_unmount_1","prop"]}
execute at @e[type=minecraft:marker,tag=saved_camera_unmount_pos,tag=saved_portalcamera_unmount_2] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:0b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",components:{"minecraft:damage":1507,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["portalcamera_unmount","portalcamera_unmount_2","prop"]}
execute as @e[type=minecraft:armor_stand,tag=portalcamera_unmount] at @s run tp @s @e[distance=..0.1,tag=saved_camera_unmount_pos,limit=1]


#GEL

execute at @e[type=minecraft:marker,tag=saved_gel_pos,tag=saved_blue_gel,tag=D_gel] run summon minecraft:item_frame ~ ~ ~ {Tags:["gel","blue_gel","mid","D"],Facing:1,Fixed:1b,Invisible:1b,Item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":152},count:1},ItemRotation:0b}
execute at @e[type=minecraft:marker,tag=saved_gel_pos,tag=saved_blue_gel,tag=U_gel] run summon minecraft:item_frame ~ ~ ~ {Tags:["gel","blue_gel","mid","U"],Facing:0,Fixed:1b,Invisible:1b,Item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":152},count:1},ItemRotation:0b}
execute at @e[type=minecraft:marker,tag=saved_gel_pos,tag=saved_blue_gel,tag=N_gel] run summon minecraft:item_frame ~ ~ ~ {Tags:["gel","blue_gel","mid","N"],Facing:3,Fixed:1b,Invisible:1b,Item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":152},count:1},ItemRotation:0b}
execute at @e[type=minecraft:marker,tag=saved_gel_pos,tag=saved_blue_gel,tag=S_gel] run summon minecraft:item_frame ~ ~ ~ {Tags:["gel","blue_gel","mid","S"],Facing:2,Fixed:1b,Invisible:1b,Item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":152},count:1},ItemRotation:0b}
execute at @e[type=minecraft:marker,tag=saved_gel_pos,tag=saved_blue_gel,tag=E_gel] run summon minecraft:item_frame ~ ~ ~ {Tags:["gel","blue_gel","mid","E"],Facing:4,Fixed:1b,Invisible:1b,Item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":152},count:1},ItemRotation:0b}
execute at @e[type=minecraft:marker,tag=saved_gel_pos,tag=saved_blue_gel,tag=W_gel] run summon minecraft:item_frame ~ ~ ~ {Tags:["gel","blue_gel","mid","W"],Facing:5,Fixed:1b,Invisible:1b,Item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":152},count:1},ItemRotation:0b}

execute at @e[type=minecraft:marker,tag=saved_gel_pos,tag=saved_orange_gel,tag=D_gel] run summon minecraft:item_frame ~ ~ ~ {Tags:["gel","orange_gel","mid","D"],Facing:1,Fixed:1b,Invisible:1b,Item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":154},count:1},ItemRotation:0b}
execute at @e[type=minecraft:marker,tag=saved_gel_pos,tag=saved_orange_gel,tag=U_gel] run summon minecraft:item_frame ~ ~ ~ {Tags:["gel","orange_gel","mid","U"],Facing:0,Fixed:1b,Invisible:1b,Item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":154},count:1},ItemRotation:0b}
execute at @e[type=minecraft:marker,tag=saved_gel_pos,tag=saved_orange_gel,tag=N_gel] run summon minecraft:item_frame ~ ~ ~ {Tags:["gel","orange_gel","mid","N"],Facing:3,Fixed:1b,Invisible:1b,Item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":154},count:1},ItemRotation:0b}
execute at @e[type=minecraft:marker,tag=saved_gel_pos,tag=saved_orange_gel,tag=S_gel] run summon minecraft:item_frame ~ ~ ~ {Tags:["gel","orange_gel","mid","S"],Facing:2,Fixed:1b,Invisible:1b,Item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":154},count:1},ItemRotation:0b}
execute at @e[type=minecraft:marker,tag=saved_gel_pos,tag=saved_orange_gel,tag=E_gel] run summon minecraft:item_frame ~ ~ ~ {Tags:["gel","orange_gel","mid","E"],Facing:4,Fixed:1b,Invisible:1b,Item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":154},count:1},ItemRotation:0b}
execute at @e[type=minecraft:marker,tag=saved_gel_pos,tag=saved_orange_gel,tag=W_gel] run summon minecraft:item_frame ~ ~ ~ {Tags:["gel","orange_gel","mid","W"],Facing:5,Fixed:1b,Invisible:1b,Item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":154},count:1},ItemRotation:0b}


execute as @e[type=minecraft:item_frame,tag=orange_gel,tag=mid] at @s run function gels:orange/check_texture
execute as @e[type=minecraft:item_frame,tag=blue_gel,tag=mid] at @s run function gels:blue/check_texture

attribute @a[limit=1] minecraft:generic.gravity base set 0.08