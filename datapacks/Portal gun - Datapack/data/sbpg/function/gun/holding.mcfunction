# Teleport my click detector in front of me
scoreboard players operation id workspace = @a[tag=test_subject,limit=1] sbpg.player_id
execute positioned as @a[tag=sbpg.holding_gun,limit=1] run tp @e[type=minecraft:interaction,tag=sbpg.click_detector] ~ ~-5 ~




execute as @a[tag=sbpg.holding_gun,nbt=!{SelectedItem:{components:{"minecraft:custom_data":{mp5:1}}}}] at @s run function sbpg:gun/stop_holding