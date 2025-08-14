#tag @s remove falling
#tag @s remove y_motion_tp
#tag @s remove xz_motion_tp
effect clear @s levitation

tag @s add stop_y_motion
tag @s remove motion_tp
#scoreboard players operation #id_test main_score = @s physical_things.player_id
#execute as @e[type=cat,tag=playaer.motion] if score @s physical_things.player_id = #id_test main_score run kill

