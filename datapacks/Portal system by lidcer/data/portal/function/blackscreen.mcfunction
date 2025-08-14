execute if score blackscreen time matches 1 run title @a[tag=test_subject,tag=!goo_killed] times 35 10 0
execute if score blackscreen time matches 1 run title @a[tag=test_subject,tag=!goo_killed] title [{"text":"\ue003","type":"text"}]

scoreboard players add blackscreen time 1
execute if score blackscreen time matches 35 at @s run function portal:maps/search
execute if score blackscreen time matches 35.. run tag @s remove blackscreen
execute if score blackscreen time matches 35.. run scoreboard players set blackscreen time 0