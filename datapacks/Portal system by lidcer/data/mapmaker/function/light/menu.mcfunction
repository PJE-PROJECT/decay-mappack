tellraw @a ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]
tellraw @a {"text":"","type":"text"}
tellraw @a ["    ",{"text":"CASCADE LIGHT EDITOR","italic":true,"color":"gold","type":"text","bold":true}]

tellraw @a {"text":"","type":"text"}

execute if score editor.light.sun buffer matches 0 run tellraw @a ["    ",{"text":"COLOR: ","type":"text","color":"gray","bold":true},{"text":"[WHITE] ","color":"white","clickEvent":{"action":"run_command","value":"/scoreboard players set editor.light.sun buffer 1"},"type":"text"}]
execute if score editor.light.sun buffer matches 1 run tellraw @a ["    ",{"text":"COLOR: ","type":"text","color":"gray","bold":true},{"text":"[SUNLIGHT] ","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players set editor.light.sun buffer 0"},"type":"text"}]

tellraw @a {"text":"","type":"text"}
execute if entity @e[tag=shadowmap,limit=1] run tellraw @a [{"text":"    [REMOVE CASCADE LIGHT] ","color":"red","clickEvent":{"action":"run_command","value":"/kill @e[tag=shadowmap]"},"type":"text"}]
tellraw @a {"text":"","type":"text"}
execute unless entity @e[tag=godrays,limit=1] run tellraw @a [{"text":"    [ADD GODRAYS] ","color":"light_purple","clickEvent":{"action":"run_command","value":"/summon minecraft:item_display ~ ~ ~ {Tags:['godrays'],item:{id:'minecraft:red_stained_glass',components:{'minecraft:custom_model_data':12},Count:1b}}"},"type":"text"}]
execute if entity @e[tag=godrays,limit=1] run tellraw @a [{"text":"    [REMOVE GODRAYS] ","color":"dark_red","clickEvent":{"action":"run_command","value":"/kill @e[tag=godrays]"},"type":"text"}]
tellraw @a {"text":"","type":"text"}
execute if entity @e[tag=shadowmap,limit=1] run tellraw @a [{"text":"    [TELEPORT TO ACTUAL LIGHT POS] ","color":"dark_green","clickEvent":{"action":"run_command","value":"/execute at @e[tag=shadowmap,limit=1] run tp @s ^ ^ ^-12 ~ ~"},"type":"text"}]

