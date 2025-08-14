scoreboard players add @e[type=minecraft:item_display,tag=tracer] time 1

item replace entity @e[type=minecraft:item_display,tag=tracer,tag=blue_t,scores={time=2}] container.0 with minecraft:netherite_shovel[minecraft:custom_model_data=119]
item replace entity @e[type=minecraft:item_display,tag=tracer,tag=blue_t,scores={time=3}] container.0 with minecraft:netherite_shovel[minecraft:custom_model_data=120]
item replace entity @e[type=minecraft:item_display,tag=tracer,tag=blue_t,scores={time=4}] container.0 with minecraft:netherite_shovel[minecraft:custom_model_data=121]
item replace entity @e[type=minecraft:item_display,tag=tracer,tag=blue_t,scores={time=5}] container.0 with minecraft:netherite_shovel[minecraft:custom_model_data=122]
item replace entity @e[type=minecraft:item_display,tag=tracer,tag=blue_t,scores={time=6}] container.0 with minecraft:netherite_shovel[minecraft:custom_model_data=123]
item replace entity @e[type=minecraft:item_display,tag=tracer,tag=blue_t,scores={time=7}] container.0 with minecraft:netherite_shovel[minecraft:custom_model_data=124]

item replace entity @e[type=minecraft:item_display,tag=tracer,tag=orange_t,scores={time=2}] container.0 with minecraft:netherite_shovel[minecraft:custom_model_data=126]
item replace entity @e[type=minecraft:item_display,tag=tracer,tag=orange_t,scores={time=3}] container.0 with minecraft:netherite_shovel[minecraft:custom_model_data=127]
item replace entity @e[type=minecraft:item_display,tag=tracer,tag=orange_t,scores={time=4}] container.0 with minecraft:netherite_shovel[minecraft:custom_model_data=128]
item replace entity @e[type=minecraft:item_display,tag=tracer,tag=orange_t,scores={time=5}] container.0 with minecraft:netherite_shovel[minecraft:custom_model_data=129]
item replace entity @e[type=minecraft:item_display,tag=tracer,tag=orange_t,scores={time=6}] container.0 with minecraft:netherite_shovel[minecraft:custom_model_data=130]
item replace entity @e[type=minecraft:item_display,tag=tracer,tag=orange_t,scores={time=7}] container.0 with minecraft:netherite_shovel[minecraft:custom_model_data=131]
kill @e[type=minecraft:item_display,tag=tracer,scores={time=10..}]

execute if entity @a[tag=b_pic,limit=1] run item replace entity @e[type=minecraft:item_display,tag=tracer] container.0 with minecraft:air
execute if entity @a[tag=o_pic,limit=1] run item replace entity @e[type=minecraft:item_display,tag=tracer] container.0 with minecraft:air

#execute if entity @a[tag=o_pic] run item replace entity @e[type=item_display,tag=tracer,tag=blue] container.0 with minecraft:air
#execute if entity @a[tag=b_pic] run item replace entity @e[type=item_display,tag=tracer,tag=orange] container.0 with minecraft:air