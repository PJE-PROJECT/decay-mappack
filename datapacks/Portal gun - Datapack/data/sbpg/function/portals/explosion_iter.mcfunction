# Calculate position of one explosion, given current motion_needed and x_dir/y_dir/z_dir

# Will be using explosion size 5 
# radius 10:	1-(10/(2*5)) = 1-1    = 0 motion applied
# radius 5:		1-(5/(2*5))  = 1-0.5  = 0.5 motion applied
# radius 1.7:   1-(1.7/(2*5))= 1-0.17 = 0.83 motion applied

# Set radius based on motion needed, reduce remaining motion needed
# If full power required for this creeper (likely more creepers):
execute if score motion_needed workspace matches 212.. run scoreboard players set radius workspace 435

# motion = 1 -  (radius/10), so: radius = 10 - 10*motion
execute if score motion_needed workspace matches ..211 run scoreboard players set radius workspace 10
execute if score motion_needed workspace matches ..211 run scoreboard players operation radius workspace *= motion_needed workspace
execute if score motion_needed workspace matches ..211 run scoreboard players operation radius workspace *= -1 constant
execute if score motion_needed workspace matches ..211 run scoreboard players add radius workspace 2560

scoreboard players remove motion_needed workspace 212

# Explosion direction is calculated based on direction to head, explosion power is calculated based on distance to feet, so...
# Point needs to be in right direction from head: (t*x, t*y, t*z) for some t
# AND the right radius from feet: (t*x)**2 + (t*y + 1.62)**2 + (t*z)**2 = radius**2
# (x**2 + y**2 + z**2)*t**2  +  (2*1.62*y)*t  +  (1.62**2 - radius**2)    =    0
# ---------a----------          -----b----       ----------c----------

scoreboard players operation x_squared workspace = x_dir workspace
scoreboard players operation x_squared workspace *= x_dir workspace
scoreboard players operation x_squared workspace /= 256 constant

scoreboard players operation y_squared workspace = y_dir workspace
scoreboard players operation y_squared workspace *= y_dir workspace
scoreboard players operation y_squared workspace /= 256 constant

scoreboard players operation z_squared workspace = z_dir workspace
scoreboard players operation z_squared workspace *= z_dir workspace
scoreboard players operation z_squared workspace /= 256 constant

# Get coefficients
scoreboard players operation a workspace = x_squared workspace
scoreboard players operation a workspace += y_squared workspace
scoreboard players operation a workspace += z_squared workspace

scoreboard players operation b workspace = y_dir workspace
scoreboard players operation b workspace *= 2*1.62*256 constant
scoreboard players operation b workspace /= 256 constant

scoreboard players operation c workspace = radius workspace
scoreboard players operation c workspace *= radius workspace
scoreboard players operation c workspace /= 256 constant
scoreboard players operation c workspace *= -1 constant
scoreboard players operation c workspace += 1.62^2*256 constant

# Quadratic formula
scoreboard players operation in workspace = b workspace
scoreboard players operation in workspace *= b workspace
scoreboard players operation in workspace /= 256 constant

scoreboard players set 4ac workspace 4
scoreboard players operation 4ac workspace *= a workspace
scoreboard players operation 4ac workspace *= c workspace
scoreboard players operation 4ac workspace /= 256 constant

scoreboard players operation in workspace -= 4ac workspace

function sbpg:maths/square_root
scoreboard players operation t workspace = out workspace

scoreboard players operation t workspace *= -1 constant
scoreboard players operation t workspace -= b workspace
scoreboard players operation t workspace /= 2 constant
scoreboard players operation t workspace *= 256 constant
scoreboard players operation t workspace /= a workspace

scoreboard players operation x_pos workspace = t workspace
scoreboard players operation x_pos workspace *= x_dir workspace
scoreboard players operation x_pos workspace /= 256 constant

scoreboard players operation y_pos workspace = t workspace
scoreboard players operation y_pos workspace *= y_dir workspace
scoreboard players operation y_pos workspace /= 256 constant
scoreboard players operation y_pos workspace += 1.62*256 constant

scoreboard players operation z_pos workspace = t workspace
scoreboard players operation z_pos workspace *= z_dir workspace
scoreboard players operation z_pos workspace /= 256 constant

# Create creeper at correct pos
scoreboard players operation x_pos workspace += player_x workspace
scoreboard players operation y_pos workspace += player_y workspace
scoreboard players operation z_pos workspace += player_z workspace
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["sbpg.pos_goer"]}
execute store result entity @e[type=minecraft:area_effect_cloud,tag=sbpg.pos_goer,sort=nearest,limit=1] Pos[0] double 0.00390625 run scoreboard players get x_pos workspace
execute store result entity @e[type=minecraft:area_effect_cloud,tag=sbpg.pos_goer,sort=nearest,limit=1] Pos[1] double 0.00390625 run scoreboard players get y_pos workspace
execute store result entity @e[type=minecraft:area_effect_cloud,tag=sbpg.pos_goer,sort=nearest,limit=1] Pos[2] double 0.00390625 run scoreboard players get z_pos workspace

execute at @e[type=minecraft:area_effect_cloud,tag=sbpg.pos_goer,sort=nearest,limit=1] if score Motion config matches 0 run summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:3,Invulnerable:1b,Tags:["sbpg.dont_store_pos"]}
execute at @e[type=minecraft:area_effect_cloud,tag=sbpg.pos_goer,sort=nearest,limit=1] if score Motion config matches 1 run summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:11,Invulnerable:1b,Tags:["sbpg.dont_store_pos"]}

execute at @e[type=minecraft:area_effect_cloud,tag=sbpg.pos_goer,sort=nearest,limit=1] if score Motion config matches 2 run summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:7,Invulnerable:1b,Tags:["sbpg.dont_store_pos"]}


kill @e[type=minecraft:area_effect_cloud,tag=sbpg.pos_goer,sort=nearest,limit=1]

# Call self again if still motion left to be applied
execute if score motion_needed workspace matches 2.. run function sbpg:portals/explosion_iter