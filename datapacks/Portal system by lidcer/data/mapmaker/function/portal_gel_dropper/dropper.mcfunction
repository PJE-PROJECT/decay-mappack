

clear @a[gamemode=creative,tag=gel_dropper_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}]

tellraw @a[gamemode=creative,tag=gel_dropper_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]


give @a[gamemode=creative,tag=gel_dropper_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_1"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Gel dropper droper - Clean Blue"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["geldrop_tool_1"]}] 1
give @a[gamemode=creative,tag=gel_dropper_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_2"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Gel dropper droper - Wrecked Blue"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["geldrop_tool_2"]}] 1
give @a[gamemode=creative,tag=gel_dropper_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_3"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Gel dropper droper - Clean Orange"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["geldrop_tool_3"]}] 1
give @a[gamemode=creative,tag=gel_dropper_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_4"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Gel dropper droper - Wrecked Orange"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["geldrop_tool_4"]}] 1
give @a[gamemode=creative,tag=gel_dropper_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_5"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Gel dropper droper - Old Blue"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["geldrop_tool_5"]}] 1
give @a[gamemode=creative,tag=gel_dropper_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_6"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Gel dropper droper - Old Orange"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["geldrop_tool_6"]}] 1
give @a[gamemode=creative,tag=gel_dropper_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_7"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Gel dropper droper - Clean Water"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["geldrop_tool_7"]}] 1
give @a[gamemode=creative,tag=gel_dropper_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_8"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"Gel dropper droper - Wrecked Water"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["geldrop_tool_8"]}] 1



give @a[gamemode=creative,tag=gel_dropper_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:custom_name='{"color":"dark_gray","text":"Exit Editor"}',minecraft:lore=['"Exit Editor"'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["exit_tool","menu2"]}] 1



execute as @a[tag=gel_dropper_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_1"]}}}}] unless entity @e[type=minecraft:armor_stand,tag=geldropper_setup,tag=clean,tag=blue] run kill @e[type=minecraft:armor_stand,tag=gel_dropper,tag=useless]
execute as @a[tag=gel_dropper_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_2"]}}}}] unless entity @e[type=minecraft:armor_stand,tag=geldropper_setup,tag=wrecked,tag=blue] run kill @e[type=minecraft:armor_stand,tag=gel_dropper,tag=useless]
execute as @a[tag=gel_dropper_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_3"]}}}}] unless entity @e[type=minecraft:armor_stand,tag=geldropper_setup,tag=clean,tag=orange] run kill @e[type=minecraft:armor_stand,tag=gel_dropper,tag=useless]
execute as @a[tag=gel_dropper_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_4"]}}}}] unless entity @e[type=minecraft:armor_stand,tag=geldropper_setup,tag=wrecked,tag=orange] run kill @e[type=minecraft:armor_stand,tag=gel_dropper,tag=useless]
execute as @a[tag=gel_dropper_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_5"]}}}}] unless entity @e[type=minecraft:armor_stand,tag=geldropper_setup,tag=old,tag=blue] run kill @e[type=minecraft:armor_stand,tag=gel_dropper,tag=useless]
execute as @a[tag=gel_dropper_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_6"]}}}}] unless entity @e[type=minecraft:armor_stand,tag=geldropper_setup,tag=old,tag=orange] run kill @e[type=minecraft:armor_stand,tag=gel_dropper,tag=useless]
execute as @a[tag=gel_dropper_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_7"]}}}}] unless entity @e[type=minecraft:armor_stand,tag=geldropper_setup,tag=clean,tag=water] run kill @e[type=minecraft:armor_stand,tag=gel_dropper,tag=useless]
execute as @a[tag=gel_dropper_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_8"]}}}}] unless entity @e[type=minecraft:armor_stand,tag=geldropper_setup,tag=wrecked,tag=water] run kill @e[type=minecraft:armor_stand,tag=gel_dropper,tag=useless]


execute as @a[tag=gel_dropper_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_1"]}}}}] at @s unless entity @e[type=minecraft:armor_stand,tag=geldropper_setup,tag=clean,tag=blue] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":156},count:1}],DisabledSlots:2037535,Tags:["geldropper_setup","gel_dropper","clean","blue","markerignore","useless"]}
execute as @a[tag=gel_dropper_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_2"]}}}}] at @s unless entity @e[type=minecraft:armor_stand,tag=geldropper_setup,tag=wrecked,tag=blue] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":157},count:1}],DisabledSlots:2037535,Tags:["geldropper_setup","gel_dropper","wrecked","blue","markerignore","useless"]}
execute as @a[tag=gel_dropper_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_3"]}}}}] at @s unless entity @e[type=minecraft:armor_stand,tag=geldropper_setup,tag=clean,tag=orange] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":158},count:1}],DisabledSlots:2037535,Tags:["geldropper_setup","gel_dropper","clean","orange","markerignore","useless"]}
execute as @a[tag=gel_dropper_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_4"]}}}}] at @s unless entity @e[type=minecraft:armor_stand,tag=geldropper_setup,tag=wrecked,tag=orange] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":159},count:1}],DisabledSlots:2037535,Tags:["geldropper_setup","gel_dropper","wrecked","orange","markerignore","useless"]}
execute as @a[tag=gel_dropper_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_5"]}}}}] at @s unless entity @e[type=minecraft:armor_stand,tag=geldropper_setup,tag=old,tag=blue] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":92},count:1}],DisabledSlots:2037535,Tags:["geldropper_setup","gel_dropper","old","blue","markerignore","useless"]}
execute as @a[tag=gel_dropper_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_6"]}}}}] at @s unless entity @e[type=minecraft:armor_stand,tag=geldropper_setup,tag=old,tag=orange] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":92},count:1}],DisabledSlots:2037535,Tags:["geldropper_setup","gel_dropper","old","orange","markerignore","useless"]}

execute as @a[tag=gel_dropper_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_7"]}}}}] at @s unless entity @e[type=minecraft:armor_stand,tag=geldropper_setup,tag=clean,tag=water] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":160},count:1}],DisabledSlots:2037535,Tags:["geldropper_setup","gel_dropper","clean","water","markerignore","useless"]}
execute as @a[tag=gel_dropper_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_8"]}}}}] at @s unless entity @e[type=minecraft:armor_stand,tag=geldropper_setup,tag=wrecked,tag=water] run summon minecraft:armor_stand ^ ^ ^ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":161},count:1}],DisabledSlots:2037535,Tags:["geldropper_setup","gel_dropper","wrecked","water","markerignore","useless"]}




tellraw @a[tag=gel_dropper_setup,limit=1] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]

tellraw @a[tag=gel_dropper_setup,limit=1] {"text":"","type":"text"}
tellraw @a[tag=gel_dropper_setup,limit=1] {"text":"","type":"text"}
execute if entity @e[tag=geldropper_setup,tag=useless,tag=!flow,limit=1] run tellraw @a[tag=gel_dropper_setup,limit=1] ["    ",{"text":"FLOW TYPE: ","italic":true,"type":"text"},{"text":"[BOMBS] ","color":"blue","clickEvent":{"action":"run_command","value":"/tag @e[tag=geldropper_setup,tag=useless,tag=!flow] add flow"},"hoverEvent":{"action":"show_text","contents":"Dropper will drop paint bombs"},"type":"text"}]
execute if entity @e[tag=geldropper_setup,tag=useless,tag=flow,limit=1] run tellraw @a[tag=gel_dropper_setup,limit=1] ["    ",{"text":"FLOW TYPE: ","italic":true,"type":"text"},{"text":"[DIARRHEA] ","color":"gold","clickEvent":{"action":"run_command","value":"/tag @e[tag=geldropper_setup,tag=useless,tag=flow] remove flow"},"hoverEvent":{"action":"show_text","contents":"Dropper will have diarrhea"},"type":"text"}]
tellraw @a[tag=gel_dropper_setup,limit=1] {"text":"","type":"text"}
tellraw @a[tag=gel_dropper_setup,limit=1] {"text":"","type":"text"}
tellraw @a[tag=gel_dropper_setup,limit=1] {"text":"","type":"text"}



execute as @e[type=minecraft:armor_stand,tag=gel_dropper,tag=useless] at @s at @p[tag=gel_dropper_setup,tag=N] run tp @s ^1 ^ ^3 -180 0
execute as @e[type=minecraft:armor_stand,tag=gel_dropper,tag=useless] at @s at @p[tag=gel_dropper_setup,tag=S] run tp @s ^1 ^ ^3 0 0
execute as @e[type=minecraft:armor_stand,tag=gel_dropper,tag=useless] at @s at @p[tag=gel_dropper_setup,tag=W] run tp @s ^1 ^ ^3 90 0
execute as @e[type=minecraft:armor_stand,tag=gel_dropper,tag=useless] at @s at @p[tag=gel_dropper_setup,tag=E] run tp @s ^1 ^ ^3 -90 0


execute as @e[type=minecraft:armor_stand,tag=gel_dropper,tag=useless] at @s align xyz run tp @s ~0.5 ~ ~0.5
execute as @e[type=minecraft:armor_stand,tag=gel_dropper,tag=useless] at @s align xyz run tp @s ~0.5 ~ ~0.5
execute as @e[type=minecraft:armor_stand,tag=gel_dropper,tag=useless] at @s align xyz run tp @s ~0.5 ~ ~0.5
execute as @e[type=minecraft:armor_stand,tag=gel_dropper,tag=useless] at @s align xyz run tp @s ~0.5 ~ ~0.5


execute as @a[tag=gel_dropper_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_1"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2
execute as @a[tag=gel_dropper_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_2"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2
execute as @a[tag=gel_dropper_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_3"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2
execute as @a[tag=gel_dropper_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_4"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2
execute as @a[tag=gel_dropper_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_5"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2
execute as @a[tag=gel_dropper_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_6"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2
execute as @a[tag=gel_dropper_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_7"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2
execute as @a[tag=gel_dropper_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_8"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2




execute as @a[tag=gel_dropper_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_1"]}}}}] run tag @e[tag=geldropper_setup] remove useless
execute as @a[tag=gel_dropper_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_2"]}}}}] run tag @e[tag=geldropper_setup] remove useless
execute as @a[tag=gel_dropper_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_3"]}}}}] run tag @e[tag=geldropper_setup] remove useless
execute as @a[tag=gel_dropper_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_4"]}}}}] run tag @e[tag=geldropper_setup] remove useless
execute as @a[tag=gel_dropper_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_5"]}}}}] run tag @e[tag=geldropper_setup] remove useless
execute as @a[tag=gel_dropper_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_6"]}}}}] run tag @e[tag=geldropper_setup] remove useless
execute as @a[tag=gel_dropper_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_7"]}}}}] run tag @e[tag=geldropper_setup] remove useless
execute as @a[tag=gel_dropper_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["geldrop_tool_8"]}}}}] run tag @e[tag=geldropper_setup] remove useless






execute at @e[type=minecraft:armor_stand,tag=geldropper_setup,tag=!useless,tag=!active] run fill ~1 ~2 ~1 ~-1 ~1 ~1 minecraft:barrier
execute at @e[type=minecraft:armor_stand,tag=geldropper_setup,tag=!useless,tag=!active] run fill ~1 ~2 ~1 ~1 ~1 ~-1 minecraft:barrier
execute at @e[type=minecraft:armor_stand,tag=geldropper_setup,tag=!useless,tag=!active] run fill ~-1 ~2 ~-1 ~1 ~1 ~-1 minecraft:barrier
execute at @e[type=minecraft:armor_stand,tag=geldropper_setup,tag=!useless,tag=!active] run fill ~-1 ~2 ~1 ~-1 ~1 ~-1 minecraft:barrier

execute at @e[type=minecraft:armor_stand,tag=geldropper_setup,tag=!useless,tag=!active] run setblock ~1 ~ ~ minecraft:iron_trapdoor[half=top]
execute at @e[type=minecraft:armor_stand,tag=geldropper_setup,tag=!useless,tag=!active] run setblock ~-1 ~ ~ minecraft:iron_trapdoor[half=top]
execute at @e[type=minecraft:armor_stand,tag=geldropper_setup,tag=!useless,tag=!active] run setblock ~ ~ ~1 minecraft:iron_trapdoor[half=top]
execute at @e[type=minecraft:armor_stand,tag=geldropper_setup,tag=!useless,tag=!active] run setblock ~ ~ ~-1 minecraft:iron_trapdoor[half=top]
execute at @e[type=minecraft:armor_stand,tag=geldropper_setup,tag=!useless,tag=!active] run setblock ~1 ~ ~1 minecraft:iron_trapdoor[half=top]
execute at @e[type=minecraft:armor_stand,tag=geldropper_setup,tag=!useless,tag=!active] run setblock ~1 ~ ~-1 minecraft:iron_trapdoor[half=top]
execute at @e[type=minecraft:armor_stand,tag=geldropper_setup,tag=!useless,tag=!active] run setblock ~-1 ~ ~1 minecraft:iron_trapdoor[half=top]
execute at @e[type=minecraft:armor_stand,tag=geldropper_setup,tag=!useless,tag=!active] run setblock ~-1 ~ ~-1 minecraft:iron_trapdoor[half=top]




tag @e[tag=geldropper_setup,tag=!useless] remove geldropper_setup