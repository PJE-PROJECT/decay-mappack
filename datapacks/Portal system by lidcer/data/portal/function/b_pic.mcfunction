
execute at @a[tag=test_subject,tag=!b_pic,limit=1] run summon minecraft:marker ~ ~ ~ {Tags:["player_pos_pic"]}
tp @e[tag=player_pos_pic] @a[tag=test_subject,tag=!b_pic,limit=1]
execute positioned as @e[tag=sbpg.portal_second,limit=1] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:red_stained_glass",components:{"minecraft:custom_model_data":2},count:1},Tags:["o_pic_trigger","tpignore"]}
gamerule sendCommandFeedback false
gamemode spectator @a
tag @a remove portable
tag @a add b_pic
