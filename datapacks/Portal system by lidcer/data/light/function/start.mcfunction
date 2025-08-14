
execute unless entity @e[type=minecraft:interaction,tag=light.click,limit=1] run summon minecraft:interaction ~ ~ ~ {Tags:["light.click"],width:4,height:4}
tp @e[type=minecraft:interaction,tag=light.click,limit=1] @s