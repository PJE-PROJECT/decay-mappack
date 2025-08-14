tag @s add sbpg.holding_gun

# Summon my click detector
summon minecraft:interaction ~ ~ ~ {Tags:["sbpg.click_detector","sbpg.click_detector_new","sbpg.hyperventilate"],width:20,height:20}

scoreboard players operation @e[distance=..1,tag=sbpg.click_detector_new] sbpg.player_id = @s sbpg.player_id
tag @e[distance=..1,tag=sbpg.click_detector_new] remove sbpg.click_detector_new