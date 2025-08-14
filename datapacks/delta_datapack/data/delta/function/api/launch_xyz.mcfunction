scoreboard players set $function_called delta.internal.dummy 1
tag @s add delta.launch

scoreboard players operation @s delta.internal.x += $x delta.api.launch
scoreboard players operation @s delta.internal.y += $y delta.api.launch
scoreboard players operation @s delta.internal.z += $z delta.api.launch



execute store result entity @s Motion[0] double 0.00008 run scoreboard players get $x delta.api.launch
execute store result entity @s Motion[1] double 0.00008 run scoreboard players get $y delta.api.launch
execute store result entity @s Motion[2] double 0.00008 run scoreboard players get $z delta.api.launch