#PORTABLE TAG

execute if entity @e[tag=sbpg.portal_first,limit=1] if entity @e[tag=sbpg.portal_second,limit=1] run tag @a[tag=!portable] add portable
execute if entity @e[tag=sbpg.portal_first,limit=1] unless entity @e[tag=sbpg.portal_second,limit=1] run tag @a[tag=portable] remove portable
execute unless entity @e[tag=sbpg.portal_first,limit=1] if entity @e[tag=sbpg.portal_second,limit=1] run tag @a[tag=portable] remove portable

execute if entity @e[tag=sbpg.portal_first,limit=1] if entity @e[tag=sbpg.portal_second,limit=1] run tag @e[type=minecraft:armor_stand,tag=cube,tag=!hoverignore,tag=!portable] add portable
execute if entity @e[tag=sbpg.portal_first,limit=1] unless entity @e[tag=sbpg.portal_second,limit=1] run tag @e[type=minecraft:armor_stand,tag=cube,tag=portable,tag=!hoverignore] remove portable
execute unless entity @e[tag=sbpg.portal_first,limit=1] if entity @e[tag=sbpg.portal_second,limit=1] run tag @e[type=minecraft:armor_stand,tag=cube,tag=portable,tag=!hoverignore] remove portable

execute if entity @e[tag=sbpg.portal_first,limit=1] if entity @e[tag=sbpg.portal_second,limit=1] run tag @e[type=armor_stand,tag=gel,tag=!portable] add portable
execute if entity @e[tag=sbpg.portal_first,limit=1] unless entity @e[tag=sbpg.portal_second,limit=1] run tag @e[type=armor_stand,tag=gel,tag=!portable] remove portable
execute unless entity @e[tag=sbpg.portal_first,limit=1] if entity @e[tag=sbpg.portal_second,limit=1] run tag @e[type=armor_stand,tag=gel,tag=!portable] remove portable

# GATES BLOCK PORTALING
execute at @e[tag=sbpg.portal,tag=sbpg.portal_main,tag=!floor,tag=!45_portal,tag=!ceiling,limit=2] if block ^ ^ ^0.5 #portal:portal_gate_enter_block run tag @e[tag=portable] remove portable
execute at @e[tag=sbpg.portal,tag=sbpg.portal_main,tag=!floor,tag=!45_portal,tag=!ceiling,limit=2] if block ^ ^1 ^0.5 #portal:portal_gate_enter_block run tag @e[tag=portable] remove portable



execute at @e[tag=sbpg.portal,tag=sbpg.portal_main,tag=floor,limit=2,tag=!north,tag=!west] if block ^ ^ ^2 #portal:portal_gate_enter_block run tag @e[tag=portable] remove portable
execute at @e[tag=sbpg.portal,tag=sbpg.portal_main,tag=floor,limit=2,tag=!north,tag=!west] if block ^ ^-1 ^2 #portal:portal_gate_enter_block run tag @e[tag=portable] remove portable

execute at @e[tag=sbpg.portal,tag=sbpg.portal_main,tag=floor,limit=2,tag=!south,tag=!east] if block ^ ^0.5 ^2 #portal:portal_gate_enter_block run tag @e[tag=portable] remove portable
execute at @e[tag=sbpg.portal,tag=sbpg.portal_main,tag=floor,limit=2,tag=!south,tag=!east] if block ^ ^-0.5 ^2 #portal:portal_gate_enter_block run tag @e[tag=portable] remove portable


execute at @e[tag=sbpg.portal,tag=sbpg.portal_main,tag=ceiling,limit=2] if block ^ ^-0.5 ^-1 #portal:portal_gate_enter_block run tag @e[tag=portable] remove portable
execute at @e[tag=sbpg.portal,tag=sbpg.portal_main,tag=ceiling,limit=2] if block ^ ^-1.5 ^-1 #portal:portal_gate_enter_block run tag @e[tag=portable] remove portable




execute if score pics config matches 0 run item replace entity @e[type=minecraft:armor_stand,tag=pic,limit=2] armor.head with minecraft:dark_oak_slab
execute if score pics config matches 1 run item replace entity @e[type=minecraft:armor_stand,tag=b_pic,limit=1] armor.head with minecraft:red_stained_glass[minecraft:custom_model_data=3]
execute if score pics config matches 1 run item replace entity @e[type=minecraft:armor_stand,tag=o_pic,limit=1] armor.head with minecraft:red_stained_glass[minecraft:custom_model_data=4]

execute if score pics config matches 1 if entity @e[tag=sbpg.portal_main,tag=sbpg.portal_first,tag=sbpg.active,limit=1] run item replace entity @e[type=minecraft:armor_stand,tag=b_pic,limit=1] armor.head with minecraft:red_stained_glass[minecraft:custom_model_data=3]
execute if score pics config matches 1 if entity @e[tag=sbpg.portal_main,tag=sbpg.portal_first,tag=!sbpg.active,limit=1] run item replace entity @e[type=minecraft:armor_stand,tag=b_pic,limit=1] armor.head with minecraft:dark_oak_slab


execute if score pics config matches 1 if entity @e[tag=sbpg.portal_main,tag=sbpg.portal_second,tag=sbpg.active,limit=1] run item replace entity @e[type=minecraft:armor_stand,tag=o_pic,limit=1] armor.head with minecraft:red_stained_glass[minecraft:custom_model_data=4]
execute if score pics config matches 1 if entity @e[tag=sbpg.portal_main,tag=sbpg.portal_second,tag=!sbpg.active,limit=1] run item replace entity @e[type=minecraft:armor_stand,tag=o_pic,limit=1] armor.head with minecraft:dark_oak_slab



execute if entity @e[tag=sbpg.portal_main,tag=sbpg.active,limit=1] as @e[type=minecraft:armor_stand,tag=sbpg.portal_edge,limit=2] run data modify entity @s ArmorItems[3].components."minecraft:damage" set value 5
execute if entity @e[tag=sbpg.portal_main,tag=!sbpg.active,limit=1] as @e[type=minecraft:armor_stand,tag=sbpg.portal_edge,limit=2] run data modify entity @s ArmorItems[3].components."minecraft:damage" set value 6

execute as @e[tag=sbpg.portal,limit=6] at @s if entity @e[type=minecraft:item_frame,distance=..0.1,nbt={Item:{id:"minecraft:red_glazed_terracotta"}}] run kill @s
execute as @e[tag=sbpg.portal,limit=6] at @s positioned ~ ~1 ~ if entity @e[type=minecraft:item_frame,distance=..0.1,nbt={Item:{id:"minecraft:red_glazed_terracotta"}}] run kill @s

