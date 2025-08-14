scoreboard players add .next sbpg.player_id 1
scoreboard players operation @s sbpg.player_id = .next sbpg.player_id
tag @s add sbpg.initiated

function sbpg:debug/give_gun/regular