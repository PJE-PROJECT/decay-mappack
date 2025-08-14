




# Check if nether chunk loaded, else prompt player to load it
execute unless score sbpg:nether_initiated global matches 1 run function sbpg:init/nether_chunk_check

scoreboard players set sbpg:tick_20 timer 0