tag @s remove test_subject
tag @s remove goo_killed
scoreboard players set @s time 0
scoreboard players set current map 0
scoreboard players set search map 0
scoreboard players set gunhold config 0
tag @e[type=minecraft:marker,tag=playerstartcoords,tag=played] remove played
clear @s
gamemode survival @s
kill @e[tag=loading_logo_p]
kill @e[tag=loading_logo_stand]
tag @s remove loading_logo
tag @s remove loading_logo_load
scoreboard players set @s timer 0
stopsound @s
scoreboard players set menumusic timer 0
tag @s remove gun_hold
function portal:ambient/disable
kill @e[tag=cube,tag=!hoverignore]
kill @e[tag=sbpg.portal]
kill @e[tag=pic]
kill @e[tag=laser]
kill @e[tag=laser_end]
tag @s add menu
tag @s add menu.main
tp @s 0 50 0