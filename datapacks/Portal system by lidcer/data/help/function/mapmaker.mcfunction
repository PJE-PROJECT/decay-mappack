title @s[gamemode=!creative] actionbar {"text":"YOU HAVE TO BE IN CREATIVE GAMEMODE TO RUN THIS COMMAND","bold":true,"color":"red","type":"text"}
clear @s[gamemode=creative]
tellraw @s[gamemode=creative] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]
tellraw @s[gamemode=creative] {"text":"Map Maker Tool","bold":true,"color":"gold","type":"text"}
tellraw @s[gamemode=creative] {"text":"","type":"text"}


tellraw @s[gamemode=creative] {"text":"","type":"text"}
tellraw @s[gamemode=creative] {"text":"","type":"text"}
execute unless entity @e[type=item_display,tag=goo,limit=1] run tellraw @s[gamemode=creative] ["",{"text":"[","bold":true,"color":"#A55200"},{"text":"Add ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/summon minecraft:item_display ~ ~ ~ {Tags:['goo'],item:{id:'minecraft:red_stained_glass',components:{'minecraft:custom_model_data':5},Count:1b}}"},"type":"text"},{"text":"Goo Reflections]","bold":true,"color":"#A55200"}]
execute if entity @e[type=item_display,tag=goo,limit=1] run tellraw @s[gamemode=creative] ["",{"text":"[","bold":true,"color":"#A55200"},{"text":"Remove ","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/kill @e[type=item_display,tag=goo]"},"type":"text"},{"text":"Goo Reflections]","bold":true,"color":"#A55200"}]



tellraw @s[gamemode=creative] {"text":"","type":"text"}
tellraw @s[gamemode=creative] ["",{"text":"[Light editor]","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"/tag @s add light_setup"},"type":"text"}]
tellraw @s[gamemode=creative] {"text":"","type":"text"}
tellraw @s[gamemode=creative] ["",{"text":"[Map player start]","color":"green","clickEvent":{"action":"run_command","value":"/tag @s add playerstart_setup"},"type":"text"}]
tellraw @s[gamemode=creative] {"text":"","type":"text"}
tellraw @s[gamemode=creative] ["",{"text":"[Custom Triggers]","color":"red","clickEvent":{"action":"run_command","value":"/tag @s add trigger_setup"},"type":"text"}]
tellraw @s[gamemode=creative] {"text":"","type":"text"}
tellraw @s[gamemode=creative] ["",{"text":"Material emancipation grill : ","color":"gray","type":"text"},{"text":"[Clean]","color":"white","clickEvent":{"action":"run_command","value":"/tag @s add material_emancipation_grill_2_setup"},"hoverEvent":{"action":"show_text","contents":"Clean Material Emancipation Grill from Portal 2"},"type":"text"},{"text":" ","color":"gray","type":"text"},{"text":"[Rusted]","color":"white","clickEvent":{"action":"run_command","value":"/tag @s add material_emancipation_grill_1_setup"},"hoverEvent":{"action":"show_text","contents":"Rusted Material Emancipation Grill from Portal 2"},"type":"text"}," ",{"text":"[Laser]","color":"white","clickEvent":{"action":"run_command","value":"/tag @s add laser_field_setup"},"hoverEvent":{"action":"show_text","contents":"Laser Field from Portal 2"},"type":"text"}," ",{"text":"[Death]","color":"white","clickEvent":{"action":"run_command","value":"/tag @s add death_field_setup"},"hoverEvent":{"action":"show_text","contents":"Death Field from Portal 2"},"type":"text"}]
tellraw @s[gamemode=creative] ["",{"text":"Portal Camera        ","color":"gray","type":"text"},{"text":"      ","bold":true,"type":"text"},{"text":": ","color":"gray","type":"text"},{"text":"[Clean]","clickEvent":{"action":"run_command","value":"/tag @s add portalcam_2_setup"},"hoverEvent":{"action":"show_text","contents":"Clean camera from Portal 2"},"type":"text"},{"text":" ","type":"text"},{"text":"[Rusted]","clickEvent":{"action":"run_command","value":"/tag @s add portalcam_1_setup"},"hoverEvent":{"action":"show_text","contents":"Rusted camera from Portal 2"},"type":"text"}]
tellraw @s[gamemode=creative] ["",{"text":"Portal Spawner              :","color":"gray","type":"text"},{"text":" ","type":"text"},{"text":"[Portal 2]","clickEvent":{"action":"run_command","value":"/tag @s add spawner_setup"},"hoverEvent":{"action":"show_text","contents":"Portal emitter from Portal 2"},"type":"text"}]
tellraw @s[gamemode=creative] ["",{"text":"Portal Door      ","color":"gray","type":"text"},{"text":"          ","bold":true,"type":"text"},{"text":": ","color":"gray","type":"text"},{"text":"[Portal 2]","clickEvent":{"action":"run_command","value":"/tag @s add portaldoor_2_setup"},"hoverEvent":{"action":"show_text","contents":"Portal door from Portal 2"},"type":"text"}]


tellraw @s[gamemode=creative] {"text":"","type":"text"}
tellraw @s[gamemode=creative] ["",{"text":"Page: ","type":"text"},{"text":"[1]","bold":true,"clickEvent":{"action":"run_command","value":"/function help:mapmaker"},"type":"text"},{"text":" ","bold":true,"type":"text"},{"text":"[2]","clickEvent":{"action":"run_command","value":"/function help:mapmaker2"},"type":"text"},{"text":" ","bold":true,"type":"text"},{"text":"[3]","clickEvent":{"action":"run_command","value":"/function help:mapmaker3"},"type":"text"},{"text":" ","bold":true,"type":"text"},{"text":"[4]","clickEvent":{"action":"run_command","value":"/function help:mapmaker4"},"type":"text"},{"text":" ","type":"text"},{"text":"[5]","clickEvent":{"action":"run_command","value":"/function help:mapmaker5"},"type":"text"}]
tellraw @s[gamemode=creative] {"text":"","type":"text"}