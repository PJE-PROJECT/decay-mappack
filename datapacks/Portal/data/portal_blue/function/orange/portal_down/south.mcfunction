
execute as @e[tag=sbpg.portal_first] at @s if score Sound config matches 2 run playsound minecraft:portal_close_2 ambient @a ~ ~ ~ 0.1 1 0


execute as @e[tag=sbpg.portal_first] at @s if score Sound config matches 2 run playsound minecraft:portal_open_blue_2 ambient @a ~ ~ ~ 0.1 1 0

scoreboard players operation id workspace = @a[tag=test_subject,limit=1] sbpg.player_id

# Kill old first-portals, update second-portals
kill @e[tag=sbpg.portal_first]
kill @e[type=minecraft:armor_stand,tag=b_pic]


#Update hard light bridge
function hard_light_bridge:delete
tag @e[tag=laser_cube,tag=active] remove active
#1#kill @e[type=minecraft:marker,tag=laser_end]




# Create new portal
execute align xyz positioned ~0.5 ~-1.5 ~ run function sbpg:portals/create_ceiling/south

# Apply first tag
tag @e[distance=..3,tag=sbpg.portal_new] add sbpg.portal_first
execute at @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=sbpg.portal_new] positioned ^ ^-1 ^ if entity @e[distance=..0.9,tag=sbpg.portal_second,limit=1] run kill @e[tag=sbpg.portal_second]
execute at @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=sbpg.portal_new] positioned ^ ^ ^ if entity @e[distance=..0.9,tag=sbpg.portal_second,limit=1] run kill @e[tag=sbpg.portal_second]
execute at @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=sbpg.portal_new] positioned ^ ^1 ^ if entity @e[distance=..0.9,tag=sbpg.portal_second,limit=1] run kill @e[tag=sbpg.portal_second]
tag @e[distance=..3,tag=sbpg.portal_new] remove sbpg.portal_new
item replace entity @e[tag=ghost,limit=2] container.0 with minecraft:dark_oak_slab
execute if score loading workspace matches 0 if score pics config matches 1 run function portal:o_pic
tag @e[type=minecraft:armor_stand,tag=pic_new] add b_pic
item replace entity @e[type=minecraft:armor_stand,tag=pic_new,tag=b_pic] armor.head with minecraft:red_stained_glass[minecraft:custom_model_data=3]
tag @e[type=minecraft:armor_stand,tag=pic_new] remove pic_new
kill @e[tag=motion_blur]
function excursion_funnel:update