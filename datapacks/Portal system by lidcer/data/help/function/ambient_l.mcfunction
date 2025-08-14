


execute if score setmap ambient_global matches ..1 run scoreboard players set setmap ambient_global 1
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]
tellraw @s [{"text":"Ambient tool","bold":true,"color":"gold","type":"text"},{"text":" ","type":"text"},{"text":"(Local)","italic":true,"color":"white","type":"text"}]
tellraw @s {"text":"","type":"text"}

tellraw @s {"text":"","type":"text"}
tellraw @s ["    ",{"text":"[Delivery Tubes Ambient]","color":"green","clickEvent":{"action":"run_command","value":"/summon minecraft:item_display ~ ~ ~ {Tags:['delivery_tubes_ambient','al']}"},"type":"text"}]
tellraw @s ["    ",{"text":"[Elevator Ambient]","color":"green","clickEvent":{"action":"run_command","value":"/summon minecraft:item_display ~ ~ ~ {Tags:['elevator_ambient','al']}"},"type":"text"}]

tellraw @s {"text":"","type":"text"}
tellraw @s ["    ",{"text":"[Show Ambients]","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function help:showsounds"},"type":"text"}]
tellraw @s ["    ",{"text":"[Hide Ambients]","color":"gray","clickEvent":{"action":"run_command","value":"/kill @e[tag=ambient.sound.icon]"},"type":"text"}]


tellraw @s {"text":"","type":"text"}
tellraw @s ["",{"text":"Page: ","italic":true,"type":"text"},{"text":"[Global]","color":"gray","clickEvent":{"action":"run_command","value":"/function help:ambient_g"},"type":"text"},{"text":" ","bold":true,"type":"text"},{"text":"[Local]","bold":true,"clickEvent":{"action":"run_command","value":"/function help:ambient_l"},"type":"text"}]
tellraw @s {"text":"","type":"text"}
