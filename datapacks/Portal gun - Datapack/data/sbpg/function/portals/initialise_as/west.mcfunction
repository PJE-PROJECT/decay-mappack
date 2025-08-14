# Copy player ID
scoreboard players operation @s sbpg.player_id = id workspace


# Apply colour (only does anything for frame AS)
execute store result entity @s ArmorItems[3].components."minecraft:dyed_color".rgb int 1 run scoreboard players get colour workspace