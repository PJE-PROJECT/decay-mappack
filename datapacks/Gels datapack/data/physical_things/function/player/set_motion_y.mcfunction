scoreboard players set *potoloc_test main_score -10000
data modify storage midwut:main temp[1] set value -0.805d

execute store result score *new_pl_pos main_score run data get entity @s Pos[1] 10
scoreboard players add *new_pl_pos main_score 35

