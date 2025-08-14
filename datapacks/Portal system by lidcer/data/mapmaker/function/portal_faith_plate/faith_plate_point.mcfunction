
clear @a[gamemode=creative,tag=plate_setup_point,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}]

tellraw @a[gamemode=creative,tag=plate_setup_point,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]



give @a[gamemode=creative,tag=plate_setup_point,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["plate_setup_point"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Aperture Science Universal Editor"',minecraft:lore=['"Weighted Storage Cube - 2"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["plate_setup_point"]}] 1
give @a[gamemode=creative,tag=plate_setup_point,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:custom_name='{"color":"black","text":"Aperture Science Universal Editor - Exit"}',minecraft:lore=['"Exit Editor"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["exit_tool","menu2"]}] 1


execute as @a[tag=plate_setup_point,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["plate_setup_point"]}}}}] at @s unless entity @e[tag=plate_setup_point_new] run summon minecraft:item_display ^ ^ ^ {item:{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":115},count:1},Tags:["plate_setup_point","faith_plate_point","plate_setup_point_new","markerignore","useless"],Glowing:1}


execute as @e[type=minecraft:item_display,tag=plate_setup_point] at @p[tag=plate_setup_point] run tp @s @p[tag=plate_setup_point]

execute as @e[type=minecraft:item_display,tag=plate_setup_point] at @p[tag=plate_setup_point,tag=N] run tp @s ^ ^1 ^4 0 0
execute as @e[type=minecraft:item_display,tag=plate_setup_point] at @p[tag=plate_setup_point,tag=S] run tp @s ^ ^1 ^4 -180 0
execute as @e[type=minecraft:item_display,tag=plate_setup_point] at @p[tag=plate_setup_point,tag=E] run tp @s ^ ^1 ^4 90 0
execute as @e[type=minecraft:item_display,tag=plate_setup_point] at @p[tag=plate_setup_point,tag=W] run tp @s ^ ^1 ^4 -90 0

execute as @e[type=minecraft:item_display,tag=plate_setup_point] at @s if entity @p[tag=plate_setup_point,tag=N] align xyz run tp @s ~0.5 ~0.5 ~0.5
execute as @e[type=minecraft:item_display,tag=plate_setup_point] at @s if entity @p[tag=plate_setup_point,tag=S] align xyz run tp @s ~0.5 ~0.5 ~0.5
execute as @e[type=minecraft:item_display,tag=plate_setup_point] at @s if entity @p[tag=plate_setup_point,tag=E] align xyz run tp @s ~0.5 ~0.5 ~0.5
execute as @e[type=minecraft:item_display,tag=plate_setup_point] at @s if entity @p[tag=plate_setup_point,tag=W] align xyz run tp @s ~0.5 ~0.5 ~0.5



execute as @a[tag=plate_setup_point,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["plate_setup_point"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2

execute as @a[tag=plate_setup_point,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["plate_setup_point"]}}}}] run tag @e[tag=plate_setup_point] add plate_setup_point_set

#execute as @e[type=minecraft:armor_stand,tag=plate_setup_point_set,tag=plate_setup_point] run data merge entity @s {Glowing:0}

execute as @e[type=minecraft:item_display,tag=plate_setup_point_set] run tag @s remove useless
execute if entity @e[type=minecraft:item_display,tag=plate_setup_point_set,tag=plate_setup_point] run tag @a[tag=plate_setup_point] add faith_plate_menu
execute as @a[tag=plate_setup_point,tag=faith_plate_menu] run function mapmaker:portal_faith_plate/menu

execute as @e[type=minecraft:item_display,tag=plate_setup_point_set] run tag @s remove plate_setup_point


execute store result score @e[type=minecraft:armor_stand,tag=plate_teh,tag=plate_setting,limit=1] point_x run data get entity @e[tag=plate_setup_point_new,limit=1] Pos[0]
execute store result score @e[type=minecraft:armor_stand,tag=plate_teh,tag=plate_setting,limit=1] point_y run data get entity @e[tag=plate_setup_point_new,limit=1] Pos[1]
execute store result score @e[type=minecraft:armor_stand,tag=plate_teh,tag=plate_setting,limit=1] point_z run data get entity @e[tag=plate_setup_point_new,limit=1] Pos[2]


execute if entity @e[type=minecraft:item_display,tag=plate_setup_point_set,limit=1] unless entity @e[type=minecraft:armor_stand,tag=cube_display,limit=1] positioned as @e[type=minecraft:armor_stand,tag=plate_teh,tag=plate_setting,limit=1] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":116},count:1}],DisabledSlots:2037535,Tags:["marker","cube_display","cube","ID","useless"]}

execute as @e[type=minecraft:armor_stand,tag=cube_display,nbt={OnGround:1b}] run kill @s

execute as @e[type=minecraft:armor_stand,tag=plate_teh,tag=plate_setting] at @s run function mapmaker:portal_faith_plate/catapult_calc