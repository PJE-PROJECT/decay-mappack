scoreboard players operation ID.Creeper ID = @s ID
execute as @e[type=minecraft:turtle,tag=ID] if score @s ID = ID.Creeper ID run tag @s add this.turtle

tp @e[type=minecraft:turtle,tag=this.turtle,limit=1] @s

tag @e remove this.turtle