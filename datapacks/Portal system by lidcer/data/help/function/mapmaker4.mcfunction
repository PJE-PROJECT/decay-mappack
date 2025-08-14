title @s[gamemode=!creative] actionbar {"text":"YOU HAVE TO BE IN CREATIVE GAMEMODE TO RUN THIS COMMAND","bold":true,"color":"red","type":"text"}

tellraw @s[gamemode=creative] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]
tellraw @s[gamemode=creative] {"text":"Map Maker Tool","bold":true,"color":"gold","type":"text"}
tellraw @s[gamemode=creative] {"text":"","type":"text"}
tellraw @s[gamemode=creative] [{"text":"Hard Light Bridge Emitter   : ","color":"gray","type":"text"},{"text":"[Portal 2]","color":"white","clickEvent":{"action":"run_command","value":"/tag @s add hard_light_bridge_setup"},"hoverEvent":{"action":"show_text","contents":"Hard Light Bridge Emitter from Portal 2"},"type":"text"}]
tellraw @s[gamemode=creative] [{"text":"Aerial Faith Plate             : ","color":"gray","type":"text"},{"text":"[Portal 2]","color":"white","clickEvent":{"action":"run_command","value":"/tag @s add plate_setup"},"hoverEvent":{"action":"show_text","contents":"Aerial Faith Plate from Portal 2"},"type":"text"}]
tellraw @s[gamemode=creative] [{"text":"Portal§l §rGun       §r              : ","color":"gray","type":"text"},{"text":"[Portal 2]","color":"white","clickEvent":{"action":"run_command","value":"/tag @s add pgun_setup"},"hoverEvent":{"action":"show_text","contents":"Portal Gun from Portal 2"},"type":"text"}]
tellraw @s[gamemode=creative] [{"text":"Vertical§l §rHeavy Door   §r      : ","color":"gray","type":"text"},{"text":"[Portal 2]","color":"white","clickEvent":{"action":"run_command","value":"/tag @s add vertdoor_setup"},"hoverEvent":{"action":"show_text","contents":"Vertical Heavy door from Portal 2"},"type":"text"}]

tellraw @s[gamemode=creative] {"text":"","type":"text"}
tellraw @s[gamemode=creative] ["",{"text":"Page: ","type":"text"},{"text":"[1]","clickEvent":{"action":"run_command","value":"/function help:mapmaker"},"type":"text"},{"text":" ","bold":true,"type":"text"},{"text":"[2]","clickEvent":{"action":"run_command","value":"/function help:mapmaker2"},"type":"text"},{"text":" ","bold":true,"type":"text"},{"text":"[3]","clickEvent":{"action":"run_command","value":"/function help:mapmaker3"},"type":"text"},{"text":" ","bold":true,"type":"text"},{"text":"[4]","bold":true,"clickEvent":{"action":"run_command","value":"/function help:mapmaker4"},"type":"text"},{"text":" ","type":"text"},{"text":"[5]","clickEvent":{"action":"run_command","value":"/function help:mapmaker5"},"type":"text"}]
tellraw @s[gamemode=creative] {"text":"","type":"text"}

