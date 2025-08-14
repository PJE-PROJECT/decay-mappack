stopsound @a ambient minecraft:tbeam_emitter_spin_lp_01
scoreboard players set @e[type=item_display,tag=funnel_emitter,tag=active] ambient_local 0

scoreboard players operation funnel_color buffer = @s animationtime
scoreboard players add funnel_color buffer 8388609

execute store result entity @s item.components."minecraft:potion_contents".custom_color int 1 run scoreboard players get funnel_color buffer