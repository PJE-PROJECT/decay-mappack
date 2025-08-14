title @s[gamemode=!creative] actionbar {"text":"YOU HAVE TO BE IN CREATIVE GAMEMODE TO RUN THIS COMMAND","bold":true,"color":"red","type":"text"}

tellraw @s[gamemode=creative] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]
tellraw @s[gamemode=creative] {"text":"Map Maker Tool","bold":true,"color":"gold","type":"text"}
tellraw @s[gamemode=creative] {"text":"","type":"text"}
tellraw @s[gamemode=creative] [{"text":"Gel§l §rDropper      §l §r      : ","color":"gray","type":"text"},{"text":"[Portal 2]","color":"white","clickEvent":{"action":"run_command","value":"/tag @s add gel_dropper_setup"},"hoverEvent":{"action":"show_text","contents":"Gels from Portal 2"},"type":"text"}]

tellraw @s[gamemode=creative] [{"text":"Elevator                  : ","color":"gray","type":"text"},{"text":"[Portal 2]","color":"white","clickEvent":{"action":"run_command","value":"/tag @s add elevator_setup"},"hoverEvent":{"action":"show_text","contents":"Arrival and Departure elevator from Portal 2"},"type":"text"}]



tellraw @s[gamemode=creative] [{"text":"Panel Arm 64x64        :","color":"gray","type":"text"},{"text":" [Clean] ","color":"white","clickEvent":{"action":"run_command","value":"/tag @s add arm_setup_clean"},"type":"text"},{"text":" [Rusted]","color":"white","clickEvent":{"action":"run_command","value":"/tag @s add arm_setup_rusted"},"type":"text"}]

tellraw @s[gamemode=creative] [{"text":"Excursion Funnel       : ","color":"gray","type":"text"},{"text":"[Portal 2]","color":"white","clickEvent":{"action":"run_command","value":"/tag @s add funnel_setup"},"hoverEvent":{"action":"show_text","contents":"Excursion Funnel from Portal 2"},"type":"text"}]



tellraw @s[gamemode=creative] {"text":"","type":"text"}
tellraw @s[gamemode=creative] ["",{"text":"Page: ","type":"text"},{"text":"[1]","clickEvent":{"action":"run_command","value":"/function help:mapmaker"},"type":"text"},{"text":" ","bold":true,"type":"text"},{"text":"[2]","clickEvent":{"action":"run_command","value":"/function help:mapmaker2"},"type":"text"},{"text":" ","bold":true,"type":"text"},{"text":"[3]","clickEvent":{"action":"run_command","value":"/function help:mapmaker3"},"type":"text"},{"text":" ","bold":true,"type":"text"},{"text":"[4]","clickEvent":{"action":"run_command","value":"/function help:mapmaker4"},"type":"text"},{"text":" ","type":"text"},{"text":"[5]","bold":true,"clickEvent":{"action":"run_command","value":"/function help:mapmaker5"},"type":"text"}]
tellraw @s[gamemode=creative] {"text":"","type":"text"}
