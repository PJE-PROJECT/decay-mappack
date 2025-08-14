
execute as @e[type=minecraft:marker,tag=mapamb] if score @s map = setmap ambient_global run kill @s
summon minecraft:marker 0 55 0 {Tags:["mapamb","new"]}
scoreboard players operation @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] map = setmap ambient_global

execute if entity @s[tag=ambience_base] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add ambience_base
execute if entity @s[tag=amb_metal_groan_low_07] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add amb_metal_groan_low_07
execute if entity @s[tag=amb_industrial_muffled_lp_01] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add amb_industrial_muffled_lp_01
execute if entity @s[tag=sp_a1_intro3_b1] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add sp_a1_intro3_b1
execute if entity @s[tag=sp_a1_intro5_b1] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add sp_a1_intro5_b1
execute if entity @s[tag=sp_a1_intro6] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add sp_a1_intro6
execute if entity @s[tag=sp_a2_trust_fling_r1] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add sp_a2_trust_fling_r1
execute if entity @s[tag=sp_a3_01_b2] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add sp_a3_01_b2
execute if entity @s[tag=sp_a1_wakeup_b1] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add sp_a1_wakeup_b1
execute if entity @s[tag=sp_a1_wakeup_b2] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add sp_a1_wakeup_b2
execute if entity @s[tag=mp_coop_lobby_2_c5] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add mp_coop_lobby_2_c5
execute if entity @s[tag=sp_a4_tb_catch_b1a] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add sp_a4_tb_catch_b1a
execute if entity @s[tag=sp_intro_01_06_chambertop] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add sp_intro_01_06_chambertop
execute if entity @s[tag=sp_intro_01_08_chamberexit] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add sp_intro_01_08_chamberexit
execute if entity @s[tag=amb_crow] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add amb_crow
execute if entity @s[tag=sp_a2_pit_flings] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add sp_a2_pit_flings
execute if entity @s[tag=amb_waterdrips] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add amb_waterdrips
execute if entity @s[tag=amb_insects_lp] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add amb_insects_lp

execute if entity @s[tag=tag_discovery_01] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add tag_discovery_01
execute if entity @s[tag=sp_a1_cube_fling_intro_ch2_a0] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add sp_a1_cube_fling_intro_ch2_a0
execute if entity @s[tag=sp_a1_cube_fling_intro_ch1_a0] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add sp_a1_cube_fling_intro_ch1_a0
execute if entity @s[tag=sp_a2_paints_ch2_a1] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add sp_a2_paints_ch2_a1
execute if entity @s[tag=sp_a2_fling_intro_a0] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add sp_a2_fling_intro_a0
execute if entity @s[tag=sp_a3_vactube_lumber_a0] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add sp_a3_vactube_lumber_a0






execute if entity @s[tag=amb_destroyed_elevator_lp_02] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add amb_destroyed_elevator_lp_02
execute if entity @s[tag=sp_a3_faith_plate] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add sp_a3_faith_plate
execute if entity @s[tag=sp_a3_concepts] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add sp_a3_concepts
execute if entity @s[tag=sp_a3_transition] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add sp_a3_transition
execute if entity @s[tag=sp_a3_paint_fling] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add sp_a3_paint_fling
execute if entity @s[tag=doublevision] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add doublevision




execute if entity @s[tag=amb_birds] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add amb_birds

execute if entity @s[tag=decay] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add decay

execute if entity @s[tag=sp_intro_02_lb1-1] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add sp_intro_02_lb1-1
execute if entity @s[tag=sp_intro_02_lx1-1] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add sp_intro_02_lx1-1
execute if entity @s[tag=sp_intro_02_lx2-1] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add sp_intro_02_lx2-1
execute if entity @s[tag=sp_intro_02_lx3-1] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add sp_intro_02_lx3-1




execute if entity @s[tag=sp_a4_intro_b0] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add sp_a4_intro_b0
execute if entity @s[tag=sp_a4_intro_b2] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add sp_a4_intro_b2
execute if entity @s[tag=sp_a4_intro_b3] run tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] add sp_a4_intro_b3


tag @e[type=minecraft:marker,tag=mapamb,tag=new,limit=1] remove new