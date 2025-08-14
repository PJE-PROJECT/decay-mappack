scoreboard players set #test main_score 1
execute if score @s physical_things.vx matches ..-1 run scoreboard players set #test main_score -1
execute if score @s physical_things.vx matches ..-1 run scoreboard players operation @s physical_things.vx *= #-1 const

scoreboard players operation @s physical_things.vx *= #98 const
scoreboard players operation @s physical_things.vx /= #100 const

execute if score #test main_score matches -1 run scoreboard players operation @s physical_things.vx *= #-1 const
