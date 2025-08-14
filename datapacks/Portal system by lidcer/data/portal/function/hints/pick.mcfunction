execute unless entity @e[type=minecraft:armor_stand,tag=cube,tag=hinted,limit=1] run tag @e[type=minecraft:armor_stand,distance=..5,tag=cube,tag=!hoverignore,tag=!hinted,sort=nearest,limit=1] add hinted
execute unless entity @e[type=minecraft:text_display,tag=hint,tag=pick,limit=1] if entity @e[type=minecraft:armor_stand,tag=cube,tag=hinted,limit=1] run playsound minecraft:beepclear ambient @a ~ ~ ~ 0.7 1 0.7
execute unless entity @e[type=minecraft:text_display,tag=hint,tag=pick,limit=1] if entity @e[type=minecraft:armor_stand,tag=cube,tag=hinted,limit=1] run summon minecraft:text_display ~ ~2 ~ {background:0,text:'"\\uE013\\uE014"',Tags:["hint","pick"],teleport_duration:5b,brightness:{sky:15,block:15},billboard:"center"}
execute positioned as @e[type=minecraft:armor_stand,tag=cube,tag=hinted,limit=1] rotated as @a[limit=1] run tp @e[type=minecraft:text_display,tag=hint,tag=pick,limit=1] ~ ~1.2 ~
execute if entity @e[type=minecraft:armor_stand,tag=cube,tag=hinted,tag=hovering,limit=1] if score cube hints matches 254 run scoreboard players set cube hints 253
execute if score cube hints matches 33..253 run scoreboard players remove cube hints 30
execute store result entity @e[type=minecraft:text_display,tag=hint,tag=pick,limit=1] text_opacity int 1 run scoreboard players get cube hints
execute if score cube hints matches 13 run function portal:hints/reset/pick