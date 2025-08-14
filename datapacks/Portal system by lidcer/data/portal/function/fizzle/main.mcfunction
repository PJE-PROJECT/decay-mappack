execute if entity @s[tag=hovering] as @a[limit=1] run function portal:item_pick/pickoff
tag @s remove hovering
tag @s add hoverignore
scoreboard players add @s time 1
execute if entity @s[scores={time=1}] run playsound minecraft:material_emancipation_01 ambient @a ~ ~ ~ 0.1 1 0
kill @s[scores={time=40..}]
data modify entity @s Motion[1] set value 0.0d


execute if entity @s[tag=cube] run function portal:fizzle/cube
execute if entity @s[tag=radio] run function portal:fizzle/radio
execute if entity @s[tag=portalcamera_unmount] run function portal:fizzle/camera



