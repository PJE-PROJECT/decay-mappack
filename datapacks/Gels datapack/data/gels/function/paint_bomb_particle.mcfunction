scoreboard players add @s time 1
execute at @s facing entity @a[limit=1] eyes run tp @s ~ ~ ~ ~ ~


execute if entity @s[tag=blue] run function gels:particle/blue
execute if entity @s[tag=orange] run function gels:particle/orange
execute if entity @s[tag=clear] run function gels:particle/clear

