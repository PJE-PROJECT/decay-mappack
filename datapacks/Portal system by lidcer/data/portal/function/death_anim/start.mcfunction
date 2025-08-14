effect give @s minecraft:instant_health 1 120 true
execute store result storage portal:killed_box_rot rot_x int 1 run data get entity @s Rotation[0]
execute store result storage portal:killed_box_rot rot_y int 1 run data get entity @s Rotation[1]
tag @s add death_anim
function mapmaker:portal_material_emacipation_grill/fizzle_portals