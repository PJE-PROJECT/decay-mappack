#Goo

execute if entity @s[tag=!goo_kill] if block ~ ~1 ~ #portal:water unless entity @e[type=minecraft:armor_stand,distance=..0.5,tag=watersplash,limit=1] run playsound minecraft:panel_splash_water_01 ambient @a ~ ~ ~ 0.3 1 0
execute if entity @s[tag=!goo_kill] if block ~ ~1 ~ #portal:water align y positioned ~ ~0.83 ~ unless entity @e[type=minecraft:armor_stand,distance=..0.5,tag=watersplash,limit=1] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:netherite_shovel",components:{"minecraft:custom_model_data":56,"minecraft:unbreakable":{}},count:1}],DisabledSlots:2037535,Tags:["watersplash"]}
tag @s add goo_kill

scoreboard players add @e[type=minecraft:armor_stand,tag=watersplash] timer 1

item replace entity @e[type=minecraft:armor_stand,tag=watersplash,scores={timer=2}] armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=57]
item replace entity @e[type=minecraft:armor_stand,tag=watersplash,scores={timer=4}] armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=58]
item replace entity @e[type=minecraft:armor_stand,tag=watersplash,scores={timer=6}] armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=59]
item replace entity @e[type=minecraft:armor_stand,tag=watersplash,scores={timer=8}] armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=60]
item replace entity @e[type=minecraft:armor_stand,tag=watersplash,scores={timer=10}] armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=61]
item replace entity @e[type=minecraft:armor_stand,tag=watersplash,scores={timer=12}] armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=62]
item replace entity @e[type=minecraft:armor_stand,tag=watersplash,scores={timer=14}] armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=63]
item replace entity @e[type=minecraft:armor_stand,tag=watersplash,scores={timer=16}] armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=64]
item replace entity @e[type=minecraft:armor_stand,tag=watersplash,scores={timer=18}] armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=65]
item replace entity @e[type=minecraft:armor_stand,tag=watersplash,scores={timer=20}] armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=66]
item replace entity @e[type=minecraft:armor_stand,tag=watersplash,scores={timer=22}] armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=67]
item replace entity @e[type=minecraft:armor_stand,tag=watersplash,scores={timer=24}] armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=68]
item replace entity @e[type=minecraft:armor_stand,tag=watersplash,scores={timer=26}] armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=69]
item replace entity @e[type=minecraft:armor_stand,tag=watersplash,scores={timer=28}] armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=70]
item replace entity @e[type=minecraft:armor_stand,tag=watersplash,scores={timer=30}] armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=71]
item replace entity @e[type=minecraft:armor_stand,tag=watersplash,scores={timer=32}] armor.head with minecraft:netherite_shovel[minecraft:custom_model_data=72]


kill @e[type=minecraft:armor_stand,tag=watersplash,scores={timer=32..}]

#execute positioned as @e[type=minecraft:armor_stand,tag=prop,tag=goo_kill,sort=random,limit=1,nbt={OnGround:1b}] if block ~ ~ ~ #portal:water run tp @e[distance=..1,tag=collus] ~ -666 ~
#execute positioned as @e[type=minecraft:armor_stand,tag=prop,tag=goo_kill,sort=random,limit=1,nbt={OnGround:1b}] if block ~ ~ ~ #portal:water run kill @e[type=minecraft:armor_stand,distance=..1,tag=prop,limit=1]

execute as @s[tag=prop,tag=cube,nbt={OnGround:1b}] at @s if block ~ ~ ~ #portal:water run tp @e[distance=..1,tag=collus] ~ -666 ~
execute as @s[tag=prop,nbt={OnGround:1b}] at @s if block ~ ~ ~ #portal:water run kill @s

execute if entity @s[tag=gel_blob] if block ~ ~ ~ #portal:water run kill @s