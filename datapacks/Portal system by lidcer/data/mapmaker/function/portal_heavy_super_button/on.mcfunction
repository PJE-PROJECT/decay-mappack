tag @s add activated
setblock ~ ~ ~ minecraft:redstone_block
execute unless block ~ ~2 ~ dark_oak_slab run setblock ~ ~2 ~ minecraft:snow[layers=2]

item replace entity @s[tag=!wrecked_style_1,tag=!wrecked_style_2,tag=!cube_only] armor.head with minecraft:diamond_hoe[minecraft:damage=1462,minecraft:unbreakable={}]
item replace entity @s[tag=wrecked_style_2,tag=!wrecked_style_1,tag=!cube_only] armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=49,minecraft:unbreakable={}]
item replace entity @s[tag=!wrecked_style_2,tag=!wrecked_style_1,tag=cube_only,tag=!rusted] armor.head with minecraft:potion[minecraft:custom_model_data=108,potion_contents={custom_color:0}]
item replace entity @s[tag=!wrecked_style_2,tag=!wrecked_style_1,tag=cube_only,tag=rusted] armor.head with minecraft:potion[minecraft:custom_model_data=111,potion_contents={custom_color:0}]

execute if entity @s[tag=!cube_only] positioned ~ ~2 ~ run tp @e[type=minecraft:item_display,distance=..1.5,tag=portal_button_plate_2,sort=nearest,limit=1] ~ ~-0.4 ~
execute if entity @s[tag=cube_only] positioned ~ ~2 ~ run tp @e[type=minecraft:item_display,distance=..1.5,tag=portal_button_plate_2,sort=nearest,limit=1] ~ ~-0.31 ~


playsound minecraft:portal_button_down_01 ambient @a ~ ~ ~ 0.2 1 0

