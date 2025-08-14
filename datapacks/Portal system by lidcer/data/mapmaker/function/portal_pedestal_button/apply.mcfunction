execute store result score @s timer run scoreboard players get button timer
scoreboard players operation @s timer *= 20* const
tag @s add timed
tag @s remove new
scoreboard players set button timer 1