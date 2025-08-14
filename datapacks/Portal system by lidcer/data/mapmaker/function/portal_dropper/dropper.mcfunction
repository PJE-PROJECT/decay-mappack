

clear @a[gamemode=creative,tag=droper_2_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}]

tellraw @a[gamemode=creative,tag=droper_2_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]


give @a[gamemode=creative,tag=droper_2_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cubedrop_2_tool_1"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Cube droper [1]"',minecraft:lore=['"Replace cubes with tag [1]"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["cubedrop_2_tool_1"]}] 1
give @a[gamemode=creative,tag=droper_2_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cubedrop_2_tool_2"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Cube droper [2]"',minecraft:lore=['"Replace cubes with tag [2]"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["cubedrop_2_tool_2"]}] 1
give @a[gamemode=creative,tag=droper_2_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cubedrop_2_tool_3"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Cube droper [3]"',minecraft:lore=['"Replace cubes with tag [3]"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["cubedrop_2_tool_3"]}] 1
give @a[gamemode=creative,tag=droper_2_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cubedrop_2_tool_4"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Cube droper [4]"',minecraft:lore=['"Replace cubes with tag [4]"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["cubedrop_2_tool_4"]}] 1
give @a[gamemode=creative,tag=droper_2_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cubedrop_2_tool_5"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Cube droper [5]"',minecraft:lore=['"Replace cubes with tag [5]"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["cubedrop_2_tool_5"]}] 1


give @a[gamemode=creative,tag=droper_2_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:custom_name='{"color":"dark_gray","text":"Exit Editor"}',minecraft:lore=['"Exit Editor"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["exit_tool","menu2"]}] 1



execute as @a[tag=droper_2_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cubedrop_2_tool_1"]}}}}] unless entity @e[type=minecraft:armor_stand,tag=2pcd1_setup] run kill @e[type=minecraft:armor_stand,tag=droper,tag=useless]
execute as @a[tag=droper_2_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cubedrop_2_tool_2"]}}}}] unless entity @e[type=minecraft:armor_stand,tag=2pcd2_setup] run kill @e[type=minecraft:armor_stand,tag=droper,tag=useless]
execute as @a[tag=droper_2_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cubedrop_2_tool_3"]}}}}] unless entity @e[type=minecraft:armor_stand,tag=2pcd3_setup] run kill @e[type=minecraft:armor_stand,tag=droper,tag=useless]
execute as @a[tag=droper_2_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cubedrop_2_tool_4"]}}}}] unless entity @e[type=minecraft:armor_stand,tag=2pcd4_setup] run kill @e[type=minecraft:armor_stand,tag=droper,tag=useless]
execute as @a[tag=droper_2_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cubedrop_2_tool_5"]}}}}] unless entity @e[type=minecraft:armor_stand,tag=2pcd5_setup] run kill @e[type=minecraft:armor_stand,tag=droper,tag=useless]

execute as @a[tag=droper_2_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cubedrop_2_tool_1"]}}}}] at @s unless entity @e[type=minecraft:armor_stand,tag=2pcd1_setup] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",components:{"minecraft:damage":1449,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["2pcd1_setup","2pcd","droper","hoverignore","markerignore","tpignore","useless"]}
execute as @a[tag=droper_2_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cubedrop_2_tool_2"]}}}}] at @s unless entity @e[type=minecraft:armor_stand,tag=2pcd2_setup] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",components:{"minecraft:damage":1449,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["2pcd2_setup","2pcd","droper","hoverignore","markerignore","tpignore","useless"]}
execute as @a[tag=droper_2_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cubedrop_2_tool_3"]}}}}] at @s unless entity @e[type=minecraft:armor_stand,tag=2pcd3_setup] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",components:{"minecraft:damage":1449,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["2pcd3_setup","2pcd","droper","hoverignore","markerignore","tpignore","useless"]}
execute as @a[tag=droper_2_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cubedrop_2_tool_4"]}}}}] at @s unless entity @e[type=minecraft:armor_stand,tag=2pcd4_setup] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",components:{"minecraft:damage":1449,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["2pcd4_setup","2pcd","droper","hoverignore","markerignore","tpignore","useless"]}
execute as @a[tag=droper_2_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cubedrop_2_tool_5"]}}}}] at @s unless entity @e[type=minecraft:armor_stand,tag=2pcd5_setup] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",components:{"minecraft:damage":1449,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["2pcd5_setup","2pcd","droper","hoverignore","markerignore","tpignore","useless"]}


execute as @e[type=minecraft:armor_stand,tag=droper,tag=useless] at @s at @p[tag=droper_2_setup,tag=N] run tp @s ^1 ^ ^3 -180 0
execute as @e[type=minecraft:armor_stand,tag=droper,tag=useless] at @s at @p[tag=droper_2_setup,tag=S] run tp @s ^1 ^ ^3 0 0
execute as @e[type=minecraft:armor_stand,tag=droper,tag=useless] at @s at @p[tag=droper_2_setup,tag=W] run tp @s ^1 ^ ^3 90 0
execute as @e[type=minecraft:armor_stand,tag=droper,tag=useless] at @s at @p[tag=droper_2_setup,tag=E] run tp @s ^1 ^ ^3 -90 0


execute as @e[type=minecraft:armor_stand,tag=droper,tag=useless] at @s align xyz run tp @s ~0.5 ~ ~0.5
execute as @e[type=minecraft:armor_stand,tag=droper,tag=useless] at @s align xyz run tp @s ~0.5 ~ ~0.5
execute as @e[type=minecraft:armor_stand,tag=droper,tag=useless] at @s align xyz run tp @s ~0.5 ~ ~0.5
execute as @e[type=minecraft:armor_stand,tag=droper,tag=useless] at @s align xyz run tp @s ~0.5 ~ ~0.5


execute as @a[tag=droper_2_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cubedrop_2_tool_1"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2
execute as @a[tag=droper_2_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cubedrop_2_tool_2"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2
execute as @a[tag=droper_2_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cubedrop_2_tool_3"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2
execute as @a[tag=droper_2_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cubedrop_2_tool_4"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2
execute as @a[tag=droper_2_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cubedrop_2_tool_5"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2

execute as @a[tag=droper_2_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cubedrop_2_tool_1"]}}}}] run tag @e[tag=2pcd1_setup] add 2pcd1
execute as @a[tag=droper_2_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cubedrop_2_tool_2"]}}}}] run tag @e[tag=2pcd2_setup] add 2pcd2
execute as @a[tag=droper_2_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cubedrop_2_tool_3"]}}}}] run tag @e[tag=2pcd3_setup] add 2pcd3
execute as @a[tag=droper_2_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cubedrop_2_tool_4"]}}}}] run tag @e[tag=2pcd4_setup] add 2pcd4
execute as @a[tag=droper_2_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["cubedrop_2_tool_5"]}}}}] run tag @e[tag=2pcd5_setup] add 2pcd5

scoreboard players set @e[type=minecraft:armor_stand,tag=2pcd,tag=2pcd1_setup,tag=2pcd1,tag=useless] animationtime 1449
scoreboard players set @e[type=minecraft:armor_stand,tag=2pcd,tag=2pcd2_setup,tag=2pcd2,tag=useless] animationtime 1449
scoreboard players set @e[type=minecraft:armor_stand,tag=2pcd,tag=2pcd3_setup,tag=2pcd3,tag=useless] animationtime 1449
scoreboard players set @e[type=minecraft:armor_stand,tag=2pcd,tag=2pcd4_setup,tag=2pcd4,tag=useless] animationtime 1449
scoreboard players set @e[type=minecraft:armor_stand,tag=2pcd,tag=2pcd5_setup,tag=2pcd5,tag=useless] animationtime 1449

execute at @e[type=minecraft:armor_stand,tag=2pcd,tag=!useless,tag=!active] run fill ~1 ~2 ~1 ~-1 ~1 ~1 minecraft:barrier
execute at @e[type=minecraft:armor_stand,tag=2pcd,tag=!useless,tag=!active] run fill ~1 ~2 ~1 ~1 ~1 ~-1 minecraft:barrier
execute at @e[type=minecraft:armor_stand,tag=2pcd,tag=!useless,tag=!active] run fill ~-1 ~2 ~-1 ~1 ~1 ~-1 minecraft:barrier
execute at @e[type=minecraft:armor_stand,tag=2pcd,tag=!useless,tag=!active] run fill ~-1 ~2 ~1 ~-1 ~1 ~-1 minecraft:barrier

execute at @e[type=minecraft:armor_stand,tag=2pcd,tag=!useless,tag=!active] run setblock ~ ~1 ~ minecraft:iron_trapdoor[half=bottom]
execute at @e[type=minecraft:armor_stand,tag=2pcd,tag=!useless,tag=!active] run setblock ~1 ~ ~ minecraft:iron_trapdoor[half=top]
execute at @e[type=minecraft:armor_stand,tag=2pcd,tag=!useless,tag=!active] run setblock ~-1 ~ ~ minecraft:iron_trapdoor[half=top]
execute at @e[type=minecraft:armor_stand,tag=2pcd,tag=!useless,tag=!active] run setblock ~ ~ ~1 minecraft:iron_trapdoor[half=top]
execute at @e[type=minecraft:armor_stand,tag=2pcd,tag=!useless,tag=!active] run setblock ~ ~ ~-1 minecraft:iron_trapdoor[half=top]
execute at @e[type=minecraft:armor_stand,tag=2pcd,tag=!useless,tag=!active] run setblock ~1 ~ ~1 minecraft:iron_trapdoor[half=top]
execute at @e[type=minecraft:armor_stand,tag=2pcd,tag=!useless,tag=!active] run setblock ~1 ~ ~-1 minecraft:iron_trapdoor[half=top]
execute at @e[type=minecraft:armor_stand,tag=2pcd,tag=!useless,tag=!active] run setblock ~-1 ~ ~1 minecraft:iron_trapdoor[half=top]
execute at @e[type=minecraft:armor_stand,tag=2pcd,tag=!useless,tag=!active] run setblock ~-1 ~ ~-1 minecraft:iron_trapdoor[half=top]

execute as @e[type=minecraft:armor_stand,tag=2pcd1_setup,tag=2pcd1,tag=!active] run tag @s remove useless
execute as @e[type=minecraft:armor_stand,tag=2pcd2_setup,tag=2pcd2,tag=!active] run tag @s remove useless
execute as @e[type=minecraft:armor_stand,tag=2pcd3_setup,tag=2pcd3,tag=!active] run tag @s remove useless
execute as @e[type=minecraft:armor_stand,tag=2pcd4_setup,tag=2pcd4,tag=!active] run tag @s remove useless
execute as @e[type=minecraft:armor_stand,tag=2pcd5_setup,tag=2pcd5,tag=!active] run tag @s remove useless
execute as @e[type=minecraft:armor_stand,tag=2pcd6_setup,tag=2pcd6,tag=!active] run tag @s remove useless
execute as @e[type=minecraft:armor_stand,tag=2pcd7_setup,tag=2pcd7,tag=!active] run tag @s remove useless
execute as @e[type=minecraft:armor_stand,tag=2pcd8_setup,tag=2pcd8,tag=!active] run tag @s remove useless


execute as @e[type=minecraft:armor_stand,tag=2pcd1_setup,tag=2pcd1] run tag @s remove 2pcd1_setup
execute as @e[type=minecraft:armor_stand,tag=2pcd2_setup,tag=2pcd2] run tag @s remove 2pcd2_setup
execute as @e[type=minecraft:armor_stand,tag=2pcd3_setup,tag=2pcd3] run tag @s remove 2pcd3_setup
execute as @e[type=minecraft:armor_stand,tag=2pcd4_setup,tag=2pcd4] run tag @s remove 2pcd4_setup
execute as @e[type=minecraft:armor_stand,tag=2pcd5_setup,tag=2pcd5] run tag @s remove 2pcd5_setup
execute as @e[type=minecraft:armor_stand,tag=2pcd6_setup,tag=2pcd6] run tag @s remove 2pcd6_setup
execute as @e[type=minecraft:armor_stand,tag=2pcd7_setup,tag=2pcd7] run tag @s remove 2pcd7_setup
execute as @e[type=minecraft:armor_stand,tag=2pcd8_setup,tag=2pcd8] run tag @s remove 2pcd8_setup

execute if entity @a[gamemode=creative,tag=droper_2_setup,tag=droper_2_setup_rusted,limit=1] run tag @e[type=minecraft:armor_stand,tag=2pcd,tag=useless] add 2pcd_rusted


execute if entity @a[gamemode=creative,tag=droper_2_setup,tag=droper_2_setup_clean_c,limit=1] run tag @e[type=minecraft:armor_stand,tag=2pcd,tag=useless] add 2pcd_c

execute if entity @a[gamemode=creative,tag=droper_2_setup,tag=droper_2_setup_clean_l,limit=1] run tag @e[type=minecraft:armor_stand,tag=2pcd,tag=useless] add 2pcd_laser
execute if entity @a[gamemode=creative,tag=droper_2_setup,tag=droper_2_setup_rusted_l,limit=1] run tag @e[type=minecraft:armor_stand,tag=2pcd,tag=useless] add 2pcd_rusted
execute if entity @a[gamemode=creative,tag=droper_2_setup,tag=droper_2_setup_rusted_l,limit=1] run tag @e[type=minecraft:armor_stand,tag=2pcd,tag=useless] add 2pcd_laser

execute as @e[type=minecraft:armor_stand,tag=2pcd,tag=2pcd_rusted,tag=!useless] unless entity @s[scores={animationtime=0..}] run item replace entity @s armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=95]
execute at @e[type=minecraft:armor_stand,tag=2pcd,tag=2pcd_rusted,tag=!useless] unless entity @e[type=minecraft:armor_stand,distance=..2,tag=2pcd_rusted_opener,limit=1] run summon minecraft:armor_stand ~ ~0.97 ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:potion",components:{"minecraft:custom_model_data":12,"minecraft:potion_contents":{custom_color:8388637}},count:1}],DisabledSlots:2037535,Tags:["2pcd_rusted_opener","hoverignore","sbpg.dont_store_pos","markerignore"]}