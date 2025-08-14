tp @a[limit=1] @e[tag=shadowmap,limit=1]
kill @e[tag=shadowmap]

execute at @a[limit=1] run summon minecraft:item_display ~ ~ ~ {Tags:["shadowmap"],item:{id:"minecraft:red_stained_glass",components:{"minecraft:custom_model_data":8},Count:1b}}
tp @e[tag=shadowmap] @a[limit=1]


effect give @a minecraft:blindness infinite 0 true
schedule function portal:light/resume_newmap/begin1 2t
schedule function portal:light/resume_newmap/finish 5t

