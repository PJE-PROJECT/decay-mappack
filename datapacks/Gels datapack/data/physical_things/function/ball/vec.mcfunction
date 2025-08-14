scoreboard players add @s[scores={physical_things.air=..1}] physical_things.air 1


execute if score @s physical_things.air matches 1 run function physical_things:ball/end_falling
execute if score @s physical_things.air matches 2 run function physical_things:ball/vec_end_falling

