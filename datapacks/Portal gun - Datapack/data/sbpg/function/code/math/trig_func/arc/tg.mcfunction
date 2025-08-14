

scoreboard players set #C1 main_score -631
scoreboard players set #C2 main_score 100000
scoreboard players set #A main_score 10000000
scoreboard players set #B main_score 430000000

scoreboard players operation #X main_score = #IN:angle math
execute if score #IN:angle math matches ..0 run scoreboard players operation #X main_score *= #-1 const

scoreboard players operation #AD main_score = #X main_score
scoreboard players add #AD main_score 100
scoreboard players operation #A main_score /= #AD main_score

scoreboard players operation #BD main_score = #X main_score
scoreboard players operation #BD main_score *= #X main_score
scoreboard players add #BD main_score 10000

scoreboard players operation #B main_score /= #BD main_score

scoreboard players operation #A main_score += #B main_score
scoreboard players remove #A main_score 143000
scoreboard players operation #A main_score *= #C1 main_score
scoreboard players operation #A main_score /= #C2 main_score
scoreboard players operation #OUT:arctg math = #A main_score

scoreboard players operation #OUT:arctg math < #900 const
execute if score #IN:angle math matches ..0 run scoreboard players operation #OUT:arctg math *= #-1 const
scoreboard players operation #OUT:arctg math *= #100 const