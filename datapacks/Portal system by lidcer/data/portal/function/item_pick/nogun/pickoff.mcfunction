execute if entity @s[tag=!pickoff_block] run tag @s remove itempicker_activated
execute if entity @s[tag=!pickoff_block] as @e[tag=prop,tag=hovering_motion,tag=!hovering,limit=1] run function portal:end_hovering
item replace entity @s weapon.mainhand with minecraft:carrot_on_a_stick[minecraft:custom_model_data=3,minecraft:custom_name='""',minecraft:unbreakable={},minecraft:custom_data={Tags:["itempicker"]}]
item replace entity @s weapon.offhand with minecraft:air


