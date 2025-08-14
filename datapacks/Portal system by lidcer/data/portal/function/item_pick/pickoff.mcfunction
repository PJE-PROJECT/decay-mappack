
execute if entity @s[tag=!pickoff_block] run tag @s remove itempicker_activated
execute if score gunhold config matches 1 if entity @s[tag=!pickoff_block] run playsound minecraft:object_use_stop ambient @a ~ ~ ~ 0.5 1 0.5
execute if score gunhold config matches 1 if entity @s[tag=!pickoff_block] as @e[tag=prop,tag=hovering_motion,tag=!hovering,limit=1] run function portal:end_hovering
execute if score gunhold config matches 1 run item replace entity @s weapon.offhand with minecraft:leather_helmet[minecraft:custom_model_data=2,minecraft:custom_name='""',minecraft:dyed_color={rgb:838808001},minecraft:custom_data={portalgunmodel:1b}]
execute if score gunhold config matches 1 run item replace entity @s weapon.mainhand with minecraft:carrot_on_a_stick[minecraft:custom_model_data=3,minecraft:custom_name='""',minecraft:unbreakable={},minecraft:custom_data={Tags:["itempicker"],mp5:1,mp6:1}]
execute if score gunhold config matches 1 if entity @s[tag=!pickoff_block] run function portalgun_anims:portalgunpickoff