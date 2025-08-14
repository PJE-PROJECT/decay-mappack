stopsound @s ambient minecraft:player_enter_tbeam
playsound minecraft:player_exit_tbeam ambient @s ~ ~ ~ 0.8 1 0.8
tag @s remove in_funnel
tag @s remove player_enter_tbeam_lp_01_looped
scoreboard players set @s f_motion_x 0
scoreboard players set @s f_motion_z 0