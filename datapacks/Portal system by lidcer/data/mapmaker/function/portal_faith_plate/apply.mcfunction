
tag @e[type=minecraft:armor_stand,tag=plate_teh,tag=plate_setting] remove plate_setting
data modify entity @e[type=minecraft:item_display,tag=plate_setup_point_new,limit=1] Glowing set value 0
kill @e[type=minecraft:item_display,tag=plate_setup_point_new]
kill @e[tag=cube_display]
tag @a remove plate_setup_point

clear @a[tag=faith_plate_menu]
tag @a remove faith_plate_menu