# Compare block to itself to check if chunk loaded
execute in the_nether store result score chunk_loaded workspace if blocks 731031 128 731031 731031 128 731031 731031 128 731031 all

# If still not loaded, prompt player
execute if score chunk_loaded workspace matches 0 run tellraw @a {"text":"Click here to complete setup for SirBenet's Portal Gun","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/execute in the_nether run forceload add 731031 731031"},"type":"text"}

# Chunk has been loaded:
execute if score chunk_loaded workspace matches 1 run function sbpg:init/nether_burrow