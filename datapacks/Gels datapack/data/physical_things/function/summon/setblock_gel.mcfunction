
execute unless block ~ ~1 ~ #midwut:run_no_pixels unless block ~ ~1 ~ minecraft:command_block run summon minecraft:item_frame ~ ~0.4999 ~ {Tags:["blue_gel"],Fixed:1b,Facing:0}
execute unless block ~ ~-1 ~ #midwut:run_no_pixels unless block ~ ~-1 ~ minecraft:command_block run summon minecraft:item_frame ~ ~-0.5 ~ {Tags:["blue_gel"],Fixed:1b,Facing:1}
execute unless block ~ ~ ~1 #midwut:run_no_pixels unless block ~ ~ ~1 minecraft:command_block run summon minecraft:item_frame ~ ~ ~0.4999 {Tags:["blue_gel"],Fixed:1b,Facing:2}
execute unless block ~ ~ ~-1 #midwut:run_no_pixels unless block ~ ~ ~-1 minecraft:command_block run summon minecraft:item_frame ~ ~ ~-0.5 {Tags:["blue_gel"],Fixed:1b,Facing:3}
execute unless block ~1 ~ ~ #midwut:run_no_pixels unless block ~1 ~ ~ minecraft:command_block run summon minecraft:item_frame ~0.4999 ~ ~ {Tags:["blue_gel"],Fixed:1b,Facing:4}
execute unless block ~-1 ~ ~ #midwut:run_no_pixels unless block ~-1 ~ ~ minecraft:command_block run summon minecraft:item_frame ~-0.5 ~ ~ {Tags:["blue_gel"],Fixed:1b,Facing:5}

setblock ~ ~ ~ minecraft:air
#function physical_things:summon/setblock_gel