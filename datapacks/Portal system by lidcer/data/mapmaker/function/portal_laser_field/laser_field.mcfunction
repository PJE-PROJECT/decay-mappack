
execute as @a[gamemode=creative,tag=laser_field_setup,scores={shiftedit=1}] run title @s actionbar ["",{"text":"Sneak: ","color":"green","type":"text"},{"text":"Always Active","bold":true,"color":"green","type":"text"},{"text":" ","color":"green","type":"text"},{"text":"(only one side required)","type":"text"}]
execute as @a[gamemode=creative,tag=laser_field_setup,scores={shiftedit=0}] run title @s actionbar ["",{"text":"Sneak: ","color":"green","type":"text"},{"text":"Needs Redstone","bold":true,"color":"green","type":"text"},{"text":" ","color":"green","type":"text"},{"text":"(only one side required)","type":"text"}]

clear @a[gamemode=creative,tag=laser_field_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}]

tellraw @a[gamemode=creative,tag=laser_field_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]




give @a[gamemode=creative,tag=laser_field_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["laser_field_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Aperture Science Universal Editor"',minecraft:lore=['"Material Emancipation Grill - 2"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["laser_field_tool"]}] 1
give @a[gamemode=creative,tag=laser_field_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:custom_name='{"color":"black","text":"Aperture Science Universal Editor - Exit"}',minecraft:lore=['"Exit Editor"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["exit_tool","menu1"]}] 1



execute as @a[tag=laser_field_setup,scores={shiftedit=0}] at @s unless entity @e[tag=laser_field_base_setup] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":179,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["laser_field_base_setup","useless"]}
execute as @a[tag=laser_field_setup,scores={shiftedit=1}] at @s unless entity @e[tag=laser_field_base_setup] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":179,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["laser_field_base_setup","useless","AlwaysActive"]}

execute as @a[tag=laser_field_setup,scores={shiftedit=0}] at @s unless entity @e[tag=laser_field_base_setup,tag=!AlwaysActive] run kill @e[tag=laser_field_base_setup]
execute as @a[tag=laser_field_setup,scores={shiftedit=1}] at @s unless entity @e[tag=laser_field_base_setup,tag=AlwaysActive] run kill @e[tag=laser_field_base_setup]


execute as @e[tag=laser_field_base_setup] at @s at @p[tag=laser_field_setup,tag=N] run tp @s ^1 ^ ^3 -180 0
execute as @e[tag=laser_field_base_setup] at @s at @p[tag=laser_field_setup,tag=S] run tp @s ^1 ^ ^3 0 0
execute as @e[tag=laser_field_base_setup] at @s at @p[tag=laser_field_setup,tag=W] run tp @s ^1 ^ ^3 90 0
execute as @e[tag=laser_field_base_setup] at @s at @p[tag=laser_field_setup,tag=E] run tp @s ^1 ^ ^3 -90 0


execute as @e[tag=laser_field_base_setup] at @s align xyz run tp @s ~0.5 ~0.24 ~0.5
execute as @e[tag=laser_field_base_setup] at @s align xyz run tp @s ~0.5 ~0.24 ~0.5
execute as @e[tag=laser_field_base_setup] at @s align xyz run tp @s ~0.5 ~0.24 ~0.5
execute as @e[tag=laser_field_base_setup] at @s align xyz run tp @s ~0.5 ~0.24 ~0.5





execute as @a[tag=laser_field_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["laser_field_tool"]}}}}] run tag @e[tag=laser_field_base_setup] add laser_field_base_setup_set
execute as @a[tag=laser_field_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["laser_field_tool"]}}}}] at @s if entity @e[tag=laser_field_base_setup_set] run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2


execute as @e[tag=laser_field_base_setup_set] at @s unless entity @e[distance=..0.2,tag=laser_field_door] run summon minecraft:armor_stand ~ ~1 ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":180,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["laser_field_door_set","close"]}
execute as @e[tag=laser_field_base_setup_set] at @s run tp @e[tag=laser_field_door_set] @s


execute as @e[tag=laser_field_door_set] run tag @s add laser_field_door
execute as @e[tag=laser_field_door_set] run tag @s remove laser_field_door_set



execute as @e[tag=laser_field_base_setup_set] at @s run tp @s ^ ^ ^0.3
execute as @e[tag=laser_field_base_setup_set] run tag @s add laser_field_base
execute as @e[tag=laser_field_base] run tag @s remove useless
execute as @e[tag=laser_field_base] run tag @s remove laser_field_base_setup
execute as @e[tag=laser_field_base_setup_set] run tag @s remove laser_field_base_setup_set

function portal:others/tag
execute at @e[tag=laser_field_base,tag=AlwaysActive,tag=!active] run tag @e[type=minecraft:armor_stand,distance=..0.5,tag=laser_field_door,tag=!active,limit=1] add AlwaysActive


execute at @e[tag=laser_field_base,tag=AlwaysActive] as @e[type=minecraft:armor_stand,distance=..0.5,tag=laser_field_door,tag=AlwaysActive,tag=!active,limit=1] at @s run function mapmaker:portal_laser_field/raycast

