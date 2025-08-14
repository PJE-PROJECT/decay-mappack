playsound minecraft:laser ambient @a[distance=..2] ~ ~1 ~ 0.0013 1 0


#X
execute if entity @s[tag=x] as @a[dz=0,limit=1] positioned ~ ~ ~-1 if entity @s[dz=0] as @s[tag=!death_anim] run function portal:death_anim/start

#Z
execute if entity @s[tag=z] as @a[dx=0,limit=1] positioned ~-1 ~ ~ if entity @s[dx=0] as @s[tag=!death_anim] run function portal:death_anim/start
