execute if entity @a[distance=..1,tag=test_subject,tag=!gun_hold,limit=1] run playsound minecraft:portalgun_activation ambient @a ~ ~ ~ 0.2 1 0
execute as @a[distance=..1,tag=test_subject,limit=1] run tag @s add gun_hold
execute if entity @a[distance=..1,tag=test_subject,tag=gun_hold,limit=1] run schedule function portalgun_anims:portalgundraw 2t
execute if entity @a[distance=..1,tag=test_subject,tag=gun_hold,limit=1] if entity @s[tag=bo] run scoreboard players set pguncol config 0
execute if entity @a[distance=..1,tag=test_subject,tag=gun_hold,limit=1] if entity @s[tag=b] run scoreboard players set pguncol config 1
execute if entity @a[distance=..1,tag=test_subject,tag=gun_hold,limit=1] if entity @s[tag=o] run scoreboard players set pguncol config 2
execute if entity @a[distance=..1,tag=test_subject,tag=gun_hold,limit=1] run scoreboard players set gunhold config 1
execute if entity @a[distance=..1,tag=test_subject,tag=gun_hold,limit=1] run tag @s add picked
execute if entity @a[distance=..1,tag=test_subject,tag=gun_hold,limit=1] run item replace entity @s container.0 with minecraft:air