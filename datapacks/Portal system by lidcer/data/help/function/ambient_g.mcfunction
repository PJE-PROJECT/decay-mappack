tag @s add ambient
execute if score setmap ambient_global matches ..1 run scoreboard players set setmap ambient_global 1
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]
tellraw @s [{"text":"Ambient tool","bold":true,"color":"gold","type":"text"},{"text":" ","type":"text"},{"text":"(Global)","italic":true,"color":"white","type":"text"}]
tellraw @s {"text":"","type":"text"}
execute if entity @s[tag=!ambience_base] run tellraw @s ["    ",{"text":"[ambience_base]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add ambience_base"},"type":"text"}]
execute if entity @s[tag=ambience_base] run tellraw @s ["    ",{"text":"[ambience_base]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove ambience_base"},"type":"text"}]
execute if entity @s[tag=!amb_metal_groan_low_07] run tellraw @s ["    ",{"text":"[amb_metal_groan_low_07]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add amb_metal_groan_low_07"},"type":"text"}]
execute if entity @s[tag=amb_metal_groan_low_07] run tellraw @s ["    ",{"text":"[amb_metal_groan_low_07]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove amb_metal_groan_low_07"},"type":"text"}]
execute if entity @s[tag=!amb_industrial_muffled_lp_01] run tellraw @s ["    ",{"text":"[amb_industrial_muffled_lp_01]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add amb_industrial_muffled_lp_01"},"type":"text"}]
execute if entity @s[tag=amb_industrial_muffled_lp_01] run tellraw @s ["    ",{"text":"[amb_industrial_muffled_lp_01]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove amb_industrial_muffled_lp_01"},"type":"text"}]
execute if entity @s[tag=!sp_a1_intro3_b1] run tellraw @s ["    ",{"text":"[sp_a1_intro3_b1]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add sp_a1_intro3_b1"},"type":"text"}]
execute if entity @s[tag=sp_a1_intro3_b1] run tellraw @s ["    ",{"text":"[sp_a1_intro3_b1]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove sp_a1_intro3_b1"},"type":"text"}]
execute if entity @s[tag=!sp_a1_intro5_b1] run tellraw @s ["    ",{"text":"[sp_a1_intro5_b1]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add sp_a1_intro5_b1"},"type":"text"}]
execute if entity @s[tag=sp_a1_intro5_b1] run tellraw @s ["    ",{"text":"[sp_a1_intro5_b1]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove sp_a1_intro5_b1"},"type":"text"}]
execute if entity @s[tag=!sp_a1_intro6] run tellraw @s ["    ",{"text":"[sp_a1_intro6]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add sp_a1_intro6"},"type":"text"}]
execute if entity @s[tag=sp_a1_intro6] run tellraw @s ["    ",{"text":"[sp_a1_intro6]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove sp_a1_intro6"},"type":"text"}]
execute if entity @s[tag=!sp_a2_trust_fling_r1] run tellraw @s ["    ",{"text":"[sp_a2_trust_fling_r1]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add sp_a2_trust_fling_r1"},"type":"text"}]
execute if entity @s[tag=sp_a2_trust_fling_r1] run tellraw @s ["    ",{"text":"[sp_a2_trust_fling_r1]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove sp_a2_trust_fling_r1"},"type":"text"}]
execute if entity @s[tag=!sp_a2_pit_flings] run tellraw @s ["    ",{"text":"[sp_a2_pit_flings]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add sp_a2_pit_flings"},"type":"text"}]
execute if entity @s[tag=sp_a2_pit_flings] run tellraw @s ["    ",{"text":"[sp_a2_pit_flings]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove sp_a2_pit_flings"},"type":"text"}]
execute if entity @s[tag=!sp_a3_01_b2] run tellraw @s ["    ",{"text":"[sp_a3_01_b2]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add sp_a3_01_b2"},"type":"text"}]
execute if entity @s[tag=sp_a3_01_b2] run tellraw @s ["    ",{"text":"[sp_a3_01_b2]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove sp_a3_01_b2"},"type":"text"}]
execute if entity @s[tag=!sp_a1_wakeup_b1] run tellraw @s ["    ",{"text":"[sp_a1_wakeup_b1]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add sp_a1_wakeup_b1"},"type":"text"}]
execute if entity @s[tag=sp_a1_wakeup_b1] run tellraw @s ["    ",{"text":"[sp_a1_wakeup_b1]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove sp_a1_wakeup_b1"},"type":"text"}]
execute if entity @s[tag=!sp_a1_wakeup_b2] run tellraw @s ["    ",{"text":"[sp_a1_wakeup_b2]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add sp_a1_wakeup_b2"},"type":"text"}]
execute if entity @s[tag=sp_a1_wakeup_b2] run tellraw @s ["    ",{"text":"[sp_a1_wakeup_b2]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove sp_a1_wakeup_b2"},"type":"text"}]
execute if entity @s[tag=!mp_coop_lobby_2_c5] run tellraw @s ["    ",{"text":"[mp_coop_lobby_2_c5]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add mp_coop_lobby_2_c5"},"type":"text"}]
execute if entity @s[tag=mp_coop_lobby_2_c5] run tellraw @s ["    ",{"text":"[mp_coop_lobby_2_c5]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove mp_coop_lobby_2_c5"},"type":"text"}]
execute if entity @s[tag=!sp_a4_tb_catch_b1a] run tellraw @s ["    ",{"text":"[sp_a4_tb_catch_b1a]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add sp_a4_tb_catch_b1a"},"type":"text"}]
execute if entity @s[tag=sp_a4_tb_catch_b1a] run tellraw @s ["    ",{"text":"[sp_a4_tb_catch_b1a]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove sp_a4_tb_catch_b1a"},"type":"text"}]
execute if entity @s[tag=!sp_intro_01_06_chambertop] run tellraw @s ["    ",{"text":"[sp_intro_01_06_chambertop]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add sp_intro_01_06_chambertop"},"type":"text"}]
execute if entity @s[tag=sp_intro_01_06_chambertop] run tellraw @s ["    ",{"text":"[sp_intro_01_06_chambertop]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove sp_intro_01_06_chambertop"},"type":"text"}]
execute if entity @s[tag=!sp_intro_01_08_chamberexit] run tellraw @s ["    ",{"text":"[sp_intro_01_08_chamberexit]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add sp_intro_01_08_chamberexit"},"type":"text"}]
execute if entity @s[tag=sp_intro_01_08_chamberexit] run tellraw @s ["    ",{"text":"[sp_intro_01_08_chamberexit]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove sp_intro_01_08_chamberexit"},"type":"text"}]
execute if entity @s[tag=!amb_crow] run tellraw @s ["    ",{"text":"[amb_crow]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add amb_crow"},"type":"text"}]
execute if entity @s[tag=amb_crow] run tellraw @s ["    ",{"text":"[amb_crow]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove amb_crow"},"type":"text"}]
execute if entity @s[tag=!amb_waterdrips] run tellraw @s ["    ",{"text":"[amb_waterdrips]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add amb_waterdrips"},"type":"text"}]
execute if entity @s[tag=amb_waterdrips] run tellraw @s ["    ",{"text":"[amb_waterdrips]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove amb_waterdrips"},"type":"text"}]
execute if entity @s[tag=!amb_insects_lp] run tellraw @s ["    ",{"text":"[amb_insects_lp]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add amb_insects_lp"},"type":"text"}]
execute if entity @s[tag=amb_insects_lp] run tellraw @s ["    ",{"text":"[amb_insects_lp]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove amb_insects_lp"},"type":"text"}]
execute if entity @s[tag=amb_birds] run tellraw @s ["    ",{"text":"[amb_birds]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove amb_birds"},"type":"text"}]
execute if entity @s[tag=!amb_birds] run tellraw @s ["    ",{"text":"[amb_birds]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add amb_birds"},"type":"text"}]

execute if entity @s[tag=decay] run tellraw @s ["    ",{"text":"[decay]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove decay"},"type":"text"}]
execute if entity @s[tag=!decay] run tellraw @s ["    ",{"text":"[decay]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add decay"},"type":"text"}]


execute if entity @s[tag=sp_intro_02_lb1-1] run tellraw @s ["    ",{"text":"[sp_intro_02_lb1-1]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove sp_intro_02_lb1-1"},"type":"text"}]
execute if entity @s[tag=!sp_intro_02_lb1-1] run tellraw @s ["    ",{"text":"[sp_intro_02_lb1-1]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add sp_intro_02_lb1-1"},"type":"text"}]

execute if entity @s[tag=sp_intro_02_lx1-1] run tellraw @s ["    ",{"text":"[sp_intro_02_lx1-1]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove sp_intro_02_lx1-1"},"type":"text"}]
execute if entity @s[tag=!sp_intro_02_lx1-1] run tellraw @s ["    ",{"text":"[sp_intro_02_lx1-1]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add sp_intro_02_lx1-1"},"type":"text"}]

execute if entity @s[tag=sp_intro_02_lx2-1] run tellraw @s ["    ",{"text":"[sp_intro_02_lx2-1]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove sp_intro_02_lx2-1"},"type":"text"}]
execute if entity @s[tag=!sp_intro_02_lx2-1] run tellraw @s ["    ",{"text":"[sp_intro_02_lx2-1]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add sp_intro_02_lx2-1"},"type":"text"}]

execute if entity @s[tag=sp_intro_02_lx3-1] run tellraw @s ["    ",{"text":"[sp_intro_02_lx3-1]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove sp_intro_02_lx3-1"},"type":"text"}]
execute if entity @s[tag=!sp_intro_02_lx3-1] run tellraw @s ["    ",{"text":"[sp_intro_02_lx3-1]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add sp_intro_02_lx3-1"},"type":"text"}]


execute if entity @s[tag=sp_a4_intro_b0] run tellraw @s ["    ",{"text":"[sp_a4_intro_b0]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove sp_a4_intro_b0"},"type":"text"}]
execute if entity @s[tag=!sp_a4_intro_b0] run tellraw @s ["    ",{"text":"[sp_a4_intro_b0]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add sp_a4_intro_b0"},"type":"text"}]

execute if entity @s[tag=sp_a4_intro_b2] run tellraw @s ["    ",{"text":"[sp_a4_intro_b2]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove sp_a4_intro_b2"},"type":"text"}]
execute if entity @s[tag=!sp_a4_intro_b2] run tellraw @s ["    ",{"text":"[sp_a4_intro_b2]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add sp_a4_intro_b2"},"type":"text"}]

execute if entity @s[tag=sp_a4_intro_b3] run tellraw @s ["    ",{"text":"[sp_a4_intro_b3]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove sp_a4_intro_b3"},"type":"text"}]
execute if entity @s[tag=!sp_a4_intro_b3] run tellraw @s ["    ",{"text":"[sp_a4_intro_b3]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add sp_a4_intro_b3"},"type":"text"}]



execute if entity @s[tag=tag_discovery_01] run tellraw @s ["    ",{"text":"[tag_discovery_01]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove tag_discovery_01"},"type":"text"}]
execute if entity @s[tag=!tag_discovery_01] run tellraw @s ["    ",{"text":"[tag_discovery_01]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add tag_discovery_01"},"type":"text"}]

execute if entity @s[tag=sp_a1_cube_fling_intro_ch2_a0] run tellraw @s ["    ",{"text":"[sp_a1_cube_fling_intro_ch2_a0]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove sp_a1_cube_fling_intro_ch2_a0"},"type":"text"}]
execute if entity @s[tag=!sp_a1_cube_fling_intro_ch2_a0] run tellraw @s ["    ",{"text":"[sp_a1_cube_fling_intro_ch2_a0]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add sp_a1_cube_fling_intro_ch2_a0"},"type":"text"}]

execute if entity @s[tag=sp_a1_cube_fling_intro_ch1_a0] run tellraw @s ["    ",{"text":"[sp_a1_cube_fling_intro_ch1_a0]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove sp_a1_cube_fling_intro_ch1_a0"},"type":"text"}]
execute if entity @s[tag=!sp_a1_cube_fling_intro_ch1_a0] run tellraw @s ["    ",{"text":"[sp_a1_cube_fling_intro_ch1_a0]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add sp_a1_cube_fling_intro_ch1_a0"},"type":"text"}]

execute if entity @s[tag=sp_a2_paints_ch2_a1] run tellraw @s ["    ",{"text":"[sp_a2_paints_ch2_a1]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove sp_a2_paints_ch2_a1"},"type":"text"}]
execute if entity @s[tag=!sp_a2_paints_ch2_a1] run tellraw @s ["    ",{"text":"[sp_a2_paints_ch2_a1]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add sp_a2_paints_ch2_a1"},"type":"text"}]

execute if entity @s[tag=sp_a2_fling_intro_a0] run tellraw @s ["    ",{"text":"[sp_a2_fling_intro_a0]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove sp_a2_fling_intro_a0"},"type":"text"}]
execute if entity @s[tag=!sp_a2_fling_intro_a0] run tellraw @s ["    ",{"text":"[sp_a2_fling_intro_a0]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add sp_a2_fling_intro_a0"},"type":"text"}]

execute if entity @s[tag=sp_a3_vactube_lumber_a0] run tellraw @s ["    ",{"text":"[sp_a3_vactube_lumber_a0]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove sp_a3_vactube_lumber_a0"},"type":"text"}]
execute if entity @s[tag=!sp_a3_vactube_lumber_a0] run tellraw @s ["    ",{"text":"[sp_a3_vactube_lumber_a0]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add sp_a3_vactube_lumber_a0"},"type":"text"}]



execute if entity @s[tag=amb_destroyed_elevator_lp_02] run tellraw @s ["    ",{"text":"[amb_destroyed_elevator_lp_02]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove amb_destroyed_elevator_lp_02"},"type":"text"}]
execute if entity @s[tag=!amb_destroyed_elevator_lp_02] run tellraw @s ["    ",{"text":"[amb_destroyed_elevator_lp_02]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add amb_destroyed_elevator_lp_02"},"type":"text"}]

tellraw @s {"text":"","type":"text"}
tellraw @s ["    ",{"text":"Portal Stories: Mel OST","color":"yellow"}]
tellraw @s {"text":"","type":"text"}


execute if entity @s[tag=sp_a3_faith_plate] run tellraw @s ["    ",{"text":"[sp_a3_faith_plate]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove sp_a3_faith_plate"},"type":"text"}]
execute if entity @s[tag=!sp_a3_faith_plate] run tellraw @s ["    ",{"text":"[sp_a3_faith_plate]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add sp_a3_faith_plate"},"type":"text"}]


execute if entity @s[tag=sp_a3_concepts] run tellraw @s ["    ",{"text":"[sp_a3_concepts]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove sp_a3_concepts"},"type":"text"}]
execute if entity @s[tag=!sp_a3_concepts] run tellraw @s ["    ",{"text":"[sp_a3_concepts]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add sp_a3_concepts"},"type":"text"}]


execute if entity @s[tag=sp_a3_transition] run tellraw @s ["    ",{"text":"[sp_a3_transition]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove sp_a3_transition"},"type":"text"}]
execute if entity @s[tag=!sp_a3_transition] run tellraw @s ["    ",{"text":"[sp_a3_transition]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add sp_a3_transition"},"type":"text"}]


execute if entity @s[tag=sp_a3_paint_fling] run tellraw @s ["    ",{"text":"[sp_a3_paint_fling]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove sp_a3_paint_fling"},"type":"text"}]
execute if entity @s[tag=!sp_a3_paint_fling] run tellraw @s ["    ",{"text":"[sp_a3_paint_fling]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add sp_a3_paint_fling"},"type":"text"}]


execute if entity @s[tag=doublevision] run tellraw @s ["    ",{"text":"[doublevision]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove doublevision"},"type":"text"}]
execute if entity @s[tag=!doublevision] run tellraw @s ["    ",{"text":"[doublevision]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add doublevision"},"type":"text"}]







tellraw @s {"text":"","type":"text"}
tellraw @s ["    ",{"text":"[REFRESH]","color":"green","clickEvent":{"action":"run_command","value":"/function help:ambient_g"},"type":"text"},"    ",{"text":"ADD TO MAP: ","italic":true,"type":"text"},{"text":"[-] ","clickEvent":{"action":"run_command","value":"/scoreboard players remove setmap ambient_global 1"},"type":"text"},{"score":{"name":"setmap","objective":"ambient_global"},"type":"score"},{"text":" [+]","clickEvent":{"action":"run_command","value":"/scoreboard players add setmap ambient_global 1"},"type":"text"},"  ",{"text":"[ADD]","color":"green","clickEvent":{"action":"run_command","value":"/function help:setmap"},"type":"text"}]
tellraw @s {"text":"","type":"text"}
tellraw @s ["",{"text":"Page: ","italic":true,"type":"text"},{"text":"[Global]","bold":true,"clickEvent":{"action":"run_command","value":"/function help:ambient_g"},"type":"text"},{"text":" ","bold":true,"type":"text"},{"text":"[Local]","color":"gray","clickEvent":{"action":"run_command","value":"/function help:ambient_l"},"type":"text"}]
tellraw @s {"text":"","type":"text"}
