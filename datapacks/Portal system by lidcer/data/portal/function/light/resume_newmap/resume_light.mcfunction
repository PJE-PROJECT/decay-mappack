item replace entity @e[tag=funnel] container.0 with air
scoreboard players set lightresume map 1


summon minecraft:item_display ~ ~ ~ {Tags:["shadowmap_stopframe"],item:{id:"minecraft:red_stained_glass",components:{"minecraft:custom_model_data":9},Count:1b}}

summon minecraft:marker ~ ~ ~ {Tags:["player.pos.light.resume"]}
tp @e[type=marker,tag=player.pos.light.resume] @a[limit=1]

gamerule sendCommandFeedback false
gamemode spectator @a

tag @e[type=minecraft:item_display,nbt={item:{id:"minecraft:white_terracotta"}}] add white.fakesky.display
item replace entity @e[type=item_display,tag=white.fakesky.display] container.0 with air

execute if entity @e[type=item_display,tag=shadowmap,limit=1] run schedule function portal:light/resume_newmap/begin 3t

execute unless entity @e[type=item_display,tag=shadowmap,limit=1] run schedule function portal:light/resume_newmap/finish1 3t