
scoreboard players operation #test main_score = @s physical_things.vy
scoreboard players operation #test main_score *= #10 const
scoreboard players operation #test main_score /= #65 const
execute if score #test main_score matches ..-1 run scoreboard players operation #test main_score /= #-1 const

execute unless score #test main_score matches 0..9 run scoreboard players operation @s physical_things.vx *= #test main_score
execute unless score #test main_score matches 0..9 run scoreboard players operation @s physical_things.vx /= #10 const
execute unless score #test main_score matches 0..9 run scoreboard players operation @s physical_things.vz *= #test main_score
execute unless score #test main_score matches 0..9 run scoreboard players operation @s physical_things.vz /= #10 const

tag @s remove ball.falling



