tp @s ~ ~ ~0.7
#execute if block ~ ~ ~ #midwut:run run tp @s ~ ~ ~0.7
#execute unless block ~ ~ ~ #midwut:run positioned ~ ~ ~-1 run tp @s ~ ~ ~0.7
data modify storage midwut:main temp[2] set value 0d
particle minecraft:dust{color:[1.0f,1.0f,1.0f],scale:2.0f} ~ ~ ~ 0 0 0 0 1 force

scoreboard players set *if_add_pos_z main_score 0