scoreboard players set #test2 main_score 1
execute if block ~ ~ ~ minecraft:glass_pane[east=false,west=false,north=false,south=false] if block ~0.4375 ~ ~ minecraft:glass_pane[east=false,west=false,north=false,south=false] if block ~-0.4375 ~ ~ minecraft:glass_pane[east=false,west=false,north=false,south=false] if block ~ ~ ~0.4375 minecraft:glass_pane[east=false,west=false,north=false,south=false] if block ~ ~ ~-0.4375 minecraft:glass_pane[east=false,west=false,north=false,south=false] run scoreboard players set #test2 main_score 0
execute if block ~ ~ ~ minecraft:glass_pane[east=true] if block ~-0.4375 ~ ~0.4375 minecraft:glass_pane[east=true] if block ~-0.4375 ~ ~-0.4375 minecraft:glass_pane[east=true] run scoreboard players set #test2 main_score 0
execute if block ~ ~ ~ minecraft:glass_pane[west=true] if block ~0.4375 ~ ~0.4375 minecraft:glass_pane[west=true] if block ~0.4375 ~ ~-0.4375 minecraft:glass_pane[west=true] run scoreboard players set #test2 main_score 0
execute if block ~ ~ ~ minecraft:glass_pane[north=true] if block ~0.4375 ~ ~0.4375 minecraft:glass_pane[north=true] if block ~-0.4375 ~ ~0.4375 minecraft:glass_pane[north=true] run scoreboard players set #test2 main_score 0
execute if block ~ ~ ~ minecraft:glass_pane[south=true] if block ~0.4375 ~ ~-0.4375 minecraft:glass_pane[south=true] if block ~-0.4375 ~ ~-0.4375 minecraft:glass_pane[south=true] run scoreboard players set #test2 main_score 0

execute if score #test2 main_score matches 1 run scoreboard players set #test main_score 1


