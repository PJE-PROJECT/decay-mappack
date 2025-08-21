gamemode adventure @a
execute at @e[type=minecraft:marker,tag=player_pos_pic,limit=1] run tp @a[tag=test_subject,limit=1] ~ ~ ~ ~ ~
kill @e[type=minecraft:marker,tag=player_pos_pic]
bossbar set portal_proj players @s[type=item]
tag @a remove b_pic
kill @e[tag=b_pic_trigger]
tag @a remove o_pic
kill @e[tag=o_pic_trigger]
tag @a add portable
scoreboard players set pic timer 0
item replace entity @e[tag=ghost] container.0 with minecraft:leather_boots[minecraft:damage=3,minecraft:unbreakable={}]
item replace entity @e[tag=motion_blur] container.0 with minecraft:red_stained_glass[minecraft:custom_model_data=11]