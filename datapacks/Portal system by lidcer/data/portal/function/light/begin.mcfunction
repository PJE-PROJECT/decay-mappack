execute as @a[limit=1] at @s run tp @s ^ ^ ^12
kill @e[tag=shadowmap]
kill @e[tag=shadowmap_sunlight]
execute at @a[limit=1] run summon minecraft:item_display ~ ~ ~ {Tags:["shadowmap"],item:{id:"minecraft:red_stained_glass",components:{"minecraft:custom_model_data":8},Count:1b}}
execute at @a[limit=1] if score editor.light.sun buffer matches 1 run summon minecraft:item_display ~ ~ ~ {Tags:["shadowmap_sunlight"],item:{id:"minecraft:red_stained_glass",components:{"minecraft:custom_model_data":10},Count:1b}}

tp @e[tag=shadowmap] @a[limit=1]


effect give @a minecraft:blindness infinite 0 true
schedule function portal:light/begin1 2t
schedule function portal:light/finish 5t

