execute as @e[type=minecraft:item_frame,nbt={Invisible:0b}] run data modify entity @s Invisible set value 1b
execute as @e[type=minecraft:item_frame,nbt={Fixed:0b}] run data modify entity @s Fixed set value 1
execute as @e[type=minecraft:item_frame,nbt={Invulnerable:0b}] run data modify entity @s Invulnerable set value 1b
tag @e[type=minecraft:item_frame,tag=!hoverignore] add hoverignore
tag @e[type=minecraft:item_frame,tag=!sbpg.dont_store_pos] add sbpg.dont_store_pos
tag @e[type=minecraft:item_frame,tag=!raycaster] add raycaster

execute as @e[type=minecraft:glow_item_frame,nbt={Invisible:0b}] run data modify entity @s Invisible set value 1b
execute as @e[type=minecraft:glow_item_frame,nbt={Fixed:0b}] run data modify entity @s Fixed set value 1
execute as @e[type=minecraft:glow_item_frame,nbt={Invulnerable:0b}] run data modify entity @s Invulnerable set value 1b
tag @e[type=minecraft:glow_item_frame,tag=!hoverignore] add hoverignore
tag @e[type=minecraft:glow_item_frame,tag=!sbpg.dont_store_pos] add sbpg.dont_store_pos
tag @e[type=minecraft:glow_item_frame,tag=!raycaster] add raycaster