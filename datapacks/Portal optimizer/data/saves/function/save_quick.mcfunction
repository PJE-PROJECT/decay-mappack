kill @e[tag=saved_cube_pos]
kill @e[tag=saved_portal_first_pos]
kill @e[tag=saved_portal_second_pos]
kill @e[tag=saved_radio_pos]
kill @e[tag=saved_camera_unmount_pos]
kill @e[tag=saved_gel_pos]

#PLAYER
#kill @e[type=minecraft:marker,tag=loadcoords,limit=1]
execute positioned 0 50 0 unless entity @e[tag=loadcoords,limit=1] run summon minecraft:marker ~ ~ ~ {Tags:["loadcoords"]}
execute store result entity @e[type=minecraft:marker,tag=loadcoords,limit=1] data.x int 1 run data get entity @a[tag=test_subject,limit=1] Pos[0]
execute store result entity @e[type=minecraft:marker,tag=loadcoords,limit=1] data.y int 1 run data get entity @a[tag=test_subject,limit=1] Pos[1]
execute store result entity @e[type=minecraft:marker,tag=loadcoords,limit=1] data.z int 1 run data get entity @a[tag=test_subject,limit=1] Pos[2]
execute store result entity @e[type=minecraft:marker,tag=loadcoords,limit=1] data.rotx int 1 run data get entity @a[tag=test_subject,limit=1] Rotation[0]
execute store result entity @e[type=minecraft:marker,tag=loadcoords,limit=1] data.roty int 1 run data get entity @a[tag=test_subject,limit=1] Rotation[1]

scoreboard players operation saved map = current map
scoreboard players operation gunhold_saved map = gunhold config
scoreboard players operation pguncol_saved map = pguncol config

kill @e[type=minecraft:marker,tag=savedplayercoords,limit=1]
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["savedplayercoords"]}
tp @e[type=minecraft:marker,tag=savedplayercoords,limit=1] @s


tag @e[type=minecraft:item_display,tag=v_portalgun,tag=saved] remove saved
tag @e[type=minecraft:item_display,tag=v_portalgun,tag=!picked] add saved

tag @e[type=minecraft:interaction,tag=custom_trigger,tag=saved] remove saved
tag @e[type=minecraft:interaction,tag=custom_trigger,tag=activated,tag=!looped] add saved

tag @e[type=minecraft:item_display,tag=vertdoor,tag=broken,tag=saved] remove saved
tag @e[type=minecraft:item_display,tag=vertdoor,tag=broken,tag=!opened] add saved

tag @e[type=minecraft:item_display,tag=vertdoor,tag=auto,tag=saved,tag=!broken] remove saved
tag @e[type=minecraft:item_display,tag=vertdoor,tag=auto,tag=!broken,tag=!opened] add saved


# BUTTONS
tag @e[type=minecraft:armor_stand,tag=button_pedestal_base,tag=activated] add active_saved
#CUBES
execute at @e[type=minecraft:armor_stand,tag=cube,tag=!hoverignore,tag=!cubetag1,tag=!cubetag2,tag=!cubetag3,tag=!cubetag4,tag=!cubetag5] run summon minecraft:marker ^ ^ ^ {Tags:["saved_cube_pos","markerignore"]}
execute at @e[type=minecraft:armor_stand,tag=cube,tag=cubetag1,tag=!hoverignore] run summon minecraft:marker ^ ^ ^ {Tags:["saved_cube_pos","saved_cubetag1","markerignore"]}
execute at @e[type=minecraft:armor_stand,tag=cube,tag=cubetag2,tag=!hoverignore] run summon minecraft:marker ^ ^ ^ {Tags:["saved_cube_pos","saved_cubetag2","markerignore"]}
execute at @e[type=minecraft:armor_stand,tag=cube,tag=cubetag3,tag=!hoverignore] run summon minecraft:marker ^ ^ ^ {Tags:["saved_cube_pos","saved_cubetag3","markerignore"]}
execute at @e[type=minecraft:armor_stand,tag=cube,tag=cubetag4,tag=!hoverignore] run summon minecraft:marker ^ ^ ^ {Tags:["saved_cube_pos","saved_cubetag4","markerignore"]}
execute at @e[type=minecraft:armor_stand,tag=cube,tag=cubetag5,tag=!hoverignore] run summon minecraft:marker ^ ^ ^ {Tags:["saved_cube_pos","saved_cubetag5","markerignore"]}
execute as @e[tag=saved_cube_pos] at @s run tp @s @e[distance=..0.1,tag=cube,limit=1]
execute at @e[type=minecraft:armor_stand,tag=cube,tag=por2s,tag=!hoverignore] run tag @e[distance=..0.1,tag=saved_cube_pos,limit=1] add saved_por2s
execute at @e[type=minecraft:armor_stand,tag=cube,tag=por2c,tag=!hoverignore] run tag @e[distance=..0.1,tag=saved_cube_pos,limit=1] add saved_por2c
execute at @e[type=minecraft:armor_stand,tag=cube,tag=laser_cube,tag=!hoverignore] run tag @e[distance=..0.1,tag=saved_cube_pos,limit=1] add saved_laser_cube
execute at @e[type=minecraft:armor_stand,tag=cube,tag=rusted,tag=!hoverignore] run tag @e[distance=..0.5,tag=saved_cube_pos,limit=1] add saved_rusted


#RADIOS
execute at @e[type=minecraft:armor_stand,tag=radio,tag=prop,tag=!hoverignore] run summon minecraft:marker ^ ^ ^ {Tags:["saved_radio_pos","markerignore"]}
execute as @e[tag=saved_radio_pos] at @s run tp @s @e[distance=..1,tag=radio,limit=1]


#CAMERAS
execute at @e[type=minecraft:armor_stand,tag=portalcamera_unmount,tag=prop,tag=!hoverignore] run summon minecraft:marker ^ ^ ^ {Tags:["saved_camera_unmount_pos","markerignore"]}
execute at @e[type=minecraft:armor_stand,tag=portalcamera_unmount,tag=prop,tag=portalcamera_unmount_1,tag=!hoverignore] run tag @e[distance=..0.1,tag=saved_camera_unmount_pos,limit=1] add saved_portalcamera_unmount_1
execute at @e[type=minecraft:armor_stand,tag=portalcamera_unmount,tag=prop,tag=portalcamera_unmount_2,tag=!hoverignore] run tag @e[distance=..0.1,tag=saved_camera_unmount_pos,limit=1] add saved_portalcamera_unmount_2
execute as @e[tag=saved_camera_unmount_pos] at @s run tp @s @e[distance=..1,tag=portalcamera_unmount,limit=1]




#GELS
execute at @e[type=minecraft:item_frame,tag=gel,tag=blue_gel,tag=mid,tag=D] run summon minecraft:marker ^ ^ ^ {Tags:["saved_gel_pos","saved_blue_gel","markerignore","D_gel"]}
execute at @e[type=minecraft:item_frame,tag=gel,tag=blue_gel,tag=mid,tag=U] run summon minecraft:marker ^ ^ ^ {Tags:["saved_gel_pos","saved_blue_gel","markerignore","U_gel"]}
execute at @e[type=minecraft:item_frame,tag=gel,tag=blue_gel,tag=mid,tag=N] run summon minecraft:marker ^ ^ ^ {Tags:["saved_gel_pos","saved_blue_gel","markerignore","N_gel"]}
execute at @e[type=minecraft:item_frame,tag=gel,tag=blue_gel,tag=mid,tag=S] run summon minecraft:marker ^ ^ ^ {Tags:["saved_gel_pos","saved_blue_gel","markerignore","S_gel"]}
execute at @e[type=minecraft:item_frame,tag=gel,tag=blue_gel,tag=mid,tag=E] run summon minecraft:marker ^ ^ ^ {Tags:["saved_gel_pos","saved_blue_gel","markerignore","E_gel"]}
execute at @e[type=minecraft:item_frame,tag=gel,tag=blue_gel,tag=mid,tag=W] run summon minecraft:marker ^ ^ ^ {Tags:["saved_gel_pos","saved_blue_gel","markerignore","W_gel"]}


execute at @e[type=minecraft:item_frame,tag=gel,tag=orange_gel,tag=mid,tag=D] run summon minecraft:marker ^ ^ ^ {Tags:["saved_gel_pos","saved_orange_gel","markerignore","D_gel"]}
execute at @e[type=minecraft:item_frame,tag=gel,tag=orange_gel,tag=mid,tag=U] run summon minecraft:marker ^ ^ ^ {Tags:["saved_gel_pos","saved_orange_gel","markerignore","U_gel"]}
execute at @e[type=minecraft:item_frame,tag=gel,tag=orange_gel,tag=mid,tag=N] run summon minecraft:marker ^ ^ ^ {Tags:["saved_gel_pos","saved_orange_gel","markerignore","N_gel"]}
execute at @e[type=minecraft:item_frame,tag=gel,tag=orange_gel,tag=mid,tag=S] run summon minecraft:marker ^ ^ ^ {Tags:["saved_gel_pos","saved_orange_gel","markerignore","S_gel"]}
execute at @e[type=minecraft:item_frame,tag=gel,tag=orange_gel,tag=mid,tag=E] run summon minecraft:marker ^ ^ ^ {Tags:["saved_gel_pos","saved_orange_gel","markerignore","E_gel"]}
execute at @e[type=minecraft:item_frame,tag=gel,tag=orange_gel,tag=mid,tag=W] run summon minecraft:marker ^ ^ ^ {Tags:["saved_gel_pos","saved_orange_gel","markerignore","W_gel"]}





#PORTALS

execute at @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first] align xyz run summon minecraft:marker ~ ~ ~ {Tags:["saved_portal_first_pos","markerignore"]}
execute at @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_second] align xyz run summon minecraft:marker ~ ~ ~ {Tags:["saved_portal_second_pos","markerignore"]}

execute as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first] run tp @e[tag=saved_portal_first_pos] @s
execute as @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_second] run tp @e[tag=saved_portal_second_pos] @s

execute as @e[tag=saved_portal_first_pos,x_rotation=90] run tag @s add D
execute as @e[tag=saved_portal_second_pos,x_rotation=90] run tag @s add D

execute as @e[tag=saved_portal_first_pos,x_rotation=-90] run tag @s add U
execute as @e[tag=saved_portal_second_pos,x_rotation=-90] run tag @s add U

execute as @e[tag=saved_portal_first_pos] if entity @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=45_portal] run tag @s add 45_portal_pos
execute as @e[tag=saved_portal_second_pos] if entity @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_second,tag=45_portal] run tag @s add 45_portal_pos