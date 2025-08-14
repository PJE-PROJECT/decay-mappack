# Copy player ID
scoreboard players operation @s sbpg.player_id = id workspace

# Get rotation (to apply to armorstand head pose)
tp @s ~ ~ ~ ~ ~
execute store result score rx workspace run data get entity @s Rotation[0] 32768
execute store result score ry workspace run data get entity @s Rotation[1] 32768

# Get basis matrix + inverse
function sbpg:portals/get_matrices

# Get portal-center position
execute at @s positioned ^ ^1.6 ^1 positioned ^ ^-1 ^ run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["sbpg.pos_getter"]}
execute store result score @s sbpg.x run data get entity @e[type=minecraft:area_effect_cloud,distance=..3,tag=sbpg.pos_getter,sort=nearest,limit=1] Pos[0] 16384
execute store result score @s sbpg.y run data get entity @e[type=minecraft:area_effect_cloud,distance=..3,tag=sbpg.pos_getter,sort=nearest,limit=1] Pos[1] 16384
execute store result score @s sbpg.z run data get entity @e[type=minecraft:area_effect_cloud,distance=..3,tag=sbpg.pos_getter,sort=nearest,limit=1] Pos[2] 16384

# Check if active
function sbpg:portals/check_active