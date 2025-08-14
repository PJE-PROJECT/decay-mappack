tag @s add sbpg.active

# "Open" appearance, glow for shader
execute if entity @s[tag=!sbpg.was_active] run item replace entity @e[type=minecraft:armor_stand,distance=..2,tag=sbpg.portal_core,sort=nearest,limit=1] armor.head with minecraft:leather_boots[minecraft:damage=5,minecraft:unbreakable={}]
execute if entity @s[tag=!sbpg.was_active] run item replace entity @e[type=minecraft:armor_stand,distance=..2,tag=sbpg.portal_inner,sort=nearest,limit=1] armor.head with minecraft:leather_boots[minecraft:damage=4,minecraft:unbreakable={}]
execute if entity @s[tag=!sbpg.was_active] run data modify entity @e[type=minecraft:armor_stand,distance=..2,tag=sbpg.portal_edge,sort=nearest,limit=1] ArmorItems[3].components."minecraft:damage" set value 5
# If about to peek, get matrices and hide paired portal