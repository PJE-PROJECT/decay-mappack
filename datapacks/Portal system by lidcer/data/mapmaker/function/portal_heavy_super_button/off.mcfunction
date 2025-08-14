tag @s remove activated
setblock ~ ~ ~ minecraft:granite
execute unless block ~ ~2 ~ dark_oak_slab run setblock ~ ~2 ~ minecraft:snow[layers=3]

item replace entity @s[tag=!wrecked_style_1,tag=!wrecked_style_2,tag=!cube_only] armor.head with minecraft:diamond_hoe[minecraft:damage=1461,minecraft:unbreakable={}]
item replace entity @s[tag=wrecked_style_2,tag=!wrecked_style_1,tag=!cube_only] armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=48,minecraft:unbreakable={}]
item replace entity @s[tag=!wrecked_style_2,tag=!wrecked_style_1,tag=cube_only,tag=!rusted] armor.head with minecraft:potion[minecraft:custom_model_data=107,potion_contents={custom_color:0}]
item replace entity @s[tag=!wrecked_style_2,tag=!wrecked_style_1,tag=cube_only,tag=rusted] armor.head with minecraft:potion[minecraft:custom_model_data=110,potion_contents={custom_color:0}]


execute positioned ~ ~2 ~ run tp @e[type=minecraft:item_display,distance=..1.5,tag=portal_button_plate_2,sort=nearest,limit=1] ~ ~-0.19 ~



playsound minecraft:portal_button_up_01 ambient @a ~ ~ ~ 0.2 1 0