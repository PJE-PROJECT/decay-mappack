#X
execute positioned ~-0.2 ~ ~ if entity @s[tag=x] as @a[dz=0,limit=1] positioned ~ ~ ~-1 if entity @s[dz=0] if entity @e[type=minecraft:area_effect_cloud,tag=sbpg.portal,tag=sbpg.portal_first,limit=1] unless score pguncol config matches 2 run function mapmaker:portal_material_emacipation_grill/fizzle_portals
execute positioned ~-0.2 ~ ~ if entity @s[tag=x] as @a[dz=0,limit=1] positioned ~ ~ ~-1 if entity @s[dz=0] if entity @e[type=minecraft:area_effect_cloud,tag=sbpg.portal,tag=sbpg.portal_second,limit=1] unless score pguncol config matches 1 run function mapmaker:portal_material_emacipation_grill/fizzle_portals
execute positioned ~-0.2 ~ ~ if entity @s[tag=x] as @a[dz=0,limit=1] positioned ~ ~ ~-1 if entity @s[dz=0] if entity @e[type=minecraft:area_effect_cloud,tag=sbpg.portal,limit=1] if score pguncol config matches 0 run function mapmaker:portal_material_emacipation_grill/fizzle_portals
##cube
execute positioned ~-0.2 ~ ~-0.3 if entity @s[tag=x] as @e[type=minecraft:armor_stand,dz=0,tag=cube] positioned ~ ~ ~-0.4 if entity @s[dz=0] run tag @s add fizzled
##radio
execute positioned ~ ~ ~-0.1 if entity @s[tag=x] as @e[type=minecraft:armor_stand,dz=0,tag=radio] positioned ~ ~ ~-0.8 if entity @s[dz=0] run tag @s add fizzled
##camera
execute positioned ~ ~ ~-0.2 if entity @s[tag=x] as @e[type=minecraft:armor_stand,dz=0,tag=portalcamera_unmount] positioned ~ ~ ~-0.9 if entity @s[dz=0] run tag @s add fizzled

#Z
execute positioned ~ ~ ~-0.2 if entity @s[tag=z] as @a[dx=0,limit=1] positioned ~-1 ~ ~ if entity @s[dx=0] if entity @e[type=minecraft:area_effect_cloud,tag=sbpg.portal,tag=sbpg.portal_first,limit=1] unless score pguncol config matches 2 run function mapmaker:portal_material_emacipation_grill/fizzle_portals
execute positioned ~ ~ ~-0.2 if entity @s[tag=z] as @a[dx=0,limit=1] positioned ~-1 ~ ~ if entity @s[dx=0] if entity @e[type=minecraft:area_effect_cloud,tag=sbpg.portal,tag=sbpg.portal_second,limit=1] unless score pguncol config matches 1 run function mapmaker:portal_material_emacipation_grill/fizzle_portals
execute positioned ~ ~ ~-0.2 if entity @s[tag=z] as @a[dx=0,limit=1] positioned ~-1 ~ ~ if entity @s[dx=0] if entity @e[type=minecraft:area_effect_cloud,tag=sbpg.portal,limit=1] if score pguncol config matches 0 run function mapmaker:portal_material_emacipation_grill/fizzle_portals
##cube
execute positioned ~-0.3 ~ ~-0.4 if entity @s[tag=z] as @e[type=minecraft:armor_stand,dx=0,tag=cube] positioned ~-0.4 ~ ~ if entity @s[dx=0] run tag @s add fizzled
##radio
execute positioned ~-0.1 ~ ~ if entity @s[tag=z] as @e[type=minecraft:armor_stand,dx=0,tag=radio] positioned ~-0.8 ~ ~ if entity @s[dx=0] run tag @s add fizzled
##camera
execute positioned ~-0.2 ~ ~ if entity @s[tag=z] as @e[type=minecraft:armor_stand,dx=0,tag=portalcamera_unmount] positioned ~-0.9 ~ ~ if entity @s[dx=0] run tag @s add fizzled