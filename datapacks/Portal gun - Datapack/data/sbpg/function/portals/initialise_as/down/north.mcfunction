# Copy player ID
scoreboard players operation @s sbpg.player_id = id workspace

# Copy AEC rotation
execute store result entity @s Pose.Head[1] float 0.000030517578125 run scoreboard players get rx workspace
execute store result entity @s Pose.Head[0] float 0.000030517578125 run scoreboard players get ry workspace

# Apply colour (only does anything for frame AS)
execute store result entity @s ArmorItems[3].components."minecraft:dyed_color".rgb int 1 run scoreboard players get colour workspace