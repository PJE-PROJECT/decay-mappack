# Calculates number of explosions of what radius are needed to fully apply player motion

# Calculate total motion needed - sqrt(x^2 + y^2 + z^2)
scoreboard players operation x_dir_squared workspace = x_dir workspace
scoreboard players operation y_dir_squared workspace = y_dir workspace
scoreboard players operation z_dir_squared workspace = z_dir workspace
scoreboard players operation x_dir_squared workspace *= x_dir workspace
scoreboard players operation y_dir_squared workspace *= y_dir workspace
scoreboard players operation z_dir_squared workspace *= z_dir workspace
scoreboard players operation x_dir_squared workspace /= 256 constant
scoreboard players operation y_dir_squared workspace /= 256 constant
scoreboard players operation z_dir_squared workspace /= 256 constant
scoreboard players operation in workspace = x_dir_squared workspace
scoreboard players operation in workspace += y_dir_squared workspace
scoreboard players operation in workspace += z_dir_squared workspace
function sbpg:maths/square_root
scoreboard players operation motion_needed workspace = out workspace
# tellraw @a ["motion_needed: ",{"score":{"name":"motion_needed","objective":"workspace"}}]

# Teleport up
tag @s add sbpg.dont_store_pos
execute if score gunhold config matches 1 run item replace entity @s[tag=test_subject,tag=itempicker_activated] weapon.offhand with minecraft:leather_helmet[minecraft:custom_model_data=2,minecraft:custom_name='""',minecraft:dyed_color={rgb:838808001},minecraft:custom_data={portalgunmodel:1b}]
execute if score gunhold config matches 1 run item replace entity @s[tag=test_subject,tag=itempicker_activated] weapon.mainhand with minecraft:carrot_on_a_stick[minecraft:custom_model_data=3,minecraft:custom_name='""',minecraft:unbreakable={},minecraft:custom_data={Tags:["itempicker"],mp5:1,mp6:1}]

execute if score gunhold config matches 0 run item replace entity @s[tag=test_subject,tag=itempicker_activated] weapon.mainhand with minecraft:carrot_on_a_stick[minecraft:custom_model_data=3,minecraft:custom_name='""',minecraft:unbreakable={},minecraft:custom_data={Tags:["itempicker"]}]
execute if score gunhold config matches 0 run item replace entity @s[tag=test_subject,tag=itempicker_activated] weapon.offhand with minecraft:air

execute unless score Motion config matches 0 at @s run tp @s ~ ~512 ~

# Get player's pos
execute store result score player_x workspace run data get entity @s Pos[0] 256
execute store result score player_y workspace run data get entity @s Pos[1] 256
execute store result score player_z workspace run data get entity @s Pos[2] 256

# Start spawning explosions
execute at @s run function sbpg:portals/explosion_iter

# Teleport back down in next tick
scoreboard players set @s sbpg.expld_timer 3
