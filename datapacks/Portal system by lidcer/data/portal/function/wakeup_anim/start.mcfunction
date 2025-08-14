execute store result storage portal:wakeup_pos rot int 1 run data get entity @e[tag=playerstart,distance=..2,limit=1] Rotation[0]

execute store result storage portal:wakeup_pos x int 1 run data get entity @e[tag=playerstart,limit=1] Pos[0]
execute store result storage portal:wakeup_pos y int 1 run data get entity @e[tag=playerstart,limit=1] Pos[1]
execute store result storage portal:wakeup_pos z int 1 run data get entity @e[tag=playerstart,limit=1] Pos[2]

scoreboard players set wakeup_anim buffer 1
title @a times 0 10 20
title @a title [{"text":"\ue003","type":"text"}]

function portal:wakeup_anim/summon with storage portal:wakeup_pos
