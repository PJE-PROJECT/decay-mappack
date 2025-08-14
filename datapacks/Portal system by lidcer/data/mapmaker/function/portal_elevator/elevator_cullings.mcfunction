execute at @e[tag=elevator_main] run data modify entity @e[type=item_display,distance=..10,tag=0,limit=1] height set value -7.0
execute at @e[tag=elevator_main] run data modify entity @e[type=item_display,distance=..10,tag=1,limit=1] width set value 5
execute at @e[tag=elevator_main] run data modify entity @e[type=item_display,distance=..10,tag=2,limit=1] width set value 7.0
execute at @e[tag=elevator_main] run data modify entity @e[type=item_display,distance=..10,tag=3,limit=1] width set value 9
execute at @e[tag=elevator_main] run data modify entity @e[type=item_display,distance=..10,tag=elevator_main,limit=1] height set value -2.0
execute at @e[tag=elevator_main] run data modify entity @e[type=item_display,distance=..10,tag=elevator_door_r,limit=1] height set value -2.0
execute at @e[tag=elevator_main] run data modify entity @e[type=item_display,distance=..10,tag=elevator_door_l,limit=1] height set value -2.0
execute at @e[tag=elevator_main] run execute as @e[tag=elevator_blade] at @s run data modify entity @s width set value 8.0


execute at @e[tag=elevator_main,tag=arrival] positioned ~ ~-10 ~ run data modify entity @e[type=item_display,distance=..10,tag=0,limit=1] height set value -7.0
execute at @e[tag=elevator_main,tag=arrival] positioned ~ ~-10 ~ run data modify entity @e[type=item_display,distance=..10,tag=1,limit=1] width set value 5
execute at @e[tag=elevator_main,tag=arrival] positioned ~ ~-10 ~ run data modify entity @e[type=item_display,distance=..10,tag=2,limit=1] width set value 7.0
execute at @e[tag=elevator_main,tag=arrival] positioned ~ ~-10 ~ run data modify entity @e[type=item_display,distance=..10,tag=3,limit=1] width set value 9
execute at @e[tag=elevator_main,tag=arrival] positioned ~ ~-10 ~ run data modify entity @e[type=item_display,distance=..10,tag=elevator_main,limit=1] height set value -2.0
execute at @e[tag=elevator_main,tag=arrival] positioned ~ ~-10 ~ run data modify entity @e[type=item_display,distance=..10,tag=elevator_door_r,limit=1] height set value -2.0
execute at @e[tag=elevator_main,tag=arrival] positioned ~ ~-10 ~ run data modify entity @e[type=item_display,distance=..10,tag=elevator_door_l,limit=1] height set value -2.0
execute at @e[tag=elevator_main,tag=arrival] positioned ~ ~-10 ~ run execute as @e[tag=elevator_blade] at @s run data modify entity @s width set value 8.0