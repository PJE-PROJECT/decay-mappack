execute as @e[type=minecraft:armor_stand,tag=cube,tag=!ID,tag=!hovering] at @s run function id_datapack:id_set
execute as @e[type=minecraft:armor_stand,tag=cube,tag=ID,tag=!hovering] at @s run function id_datapack:id_teleport


execute as @e[type=minecraft:turtle,tag=collus] if score @s ID = @e[type=minecraft:armor_stand,tag=cube,tag=hovering,sort=random,limit=1] ID at @s run tp @e[distance=..0.1,tag=collus] 0 -666 0
execute as @e[type=minecraft:turtle,tag=collus] if score @s ID = @e[type=minecraft:armor_stand,tag=cube,tag=fizzled,sort=random,limit=1] ID at @s run tp @e[distance=..0.1,tag=collus] 0 -666 0