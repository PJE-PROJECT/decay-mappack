
execute at @a[tag=test_subject,tag=!o_pic,limit=1] run summon minecraft:marker ~ ~ ~ {Tags:["player_pos_pic"]}
tp @e[tag=player_pos_pic] @a[tag=test_subject,tag=!o_pic,limit=1]

execute positioned as @e[tag=sbpg.portal_first,limit=1] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:red_stained_glass",components:{"minecraft:custom_model_data":1},count:1},Tags:["o_pic_trigger","tpignore"]}
#execute at @e[type=area_effect_cloud,tag=sbpg.portal_first,limit=1] run tp @a[tag=test_subject,limit=1] ^ ^-0.5 ^0.141 ~-21 ~-6
#execute positioned as @a[tag=test_subject,limit=1] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:red_stained_glass",Count:1b,tag:{CustomModelData:1}},Tags:["o_pic_trigger","tpignore"]}
#
#
#
##
gamerule sendCommandFeedback false
gamemode spectator @a
#execute at @e[type=area_effect_cloud,tag=sbpg.portal_second,limit=1] run tp @a[tag=test_subject,limit=1] ^ ^-0.5 ^0.25 ~-21 ~-6s
tag @a remove portable
tag @a add o_pic


# Nothing lasts forever
# Even cold november rain