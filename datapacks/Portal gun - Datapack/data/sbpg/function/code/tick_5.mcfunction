# Check for new players
execute as @a[tag=!sbpg.initiated] run function sbpg:init/new_player

# Check if player has started holding gun
#execute as @a[nbt={SelectedItem:{tag:{portal_gun:1b}}},tag=!sbpg.holding_gun] at @s run function sbpg:gun/start_holding
execute as @a[tag=!sbpg.holding_gun,nbt={SelectedItem:{components:{"minecraft:custom_data":{mp5:1}}}}] at @s run function sbpg:gun/start_holding

scoreboard players set sbpg:tick_5 timer 0