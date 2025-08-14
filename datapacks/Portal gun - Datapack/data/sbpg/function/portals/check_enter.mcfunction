# Check if I'm entering a portal

# Diff from previous pos
scoreboard players operation diff_x workspace = @s sbpg.x
scoreboard players operation diff_y workspace = @s sbpg.y
scoreboard players operation diff_z workspace = @s sbpg.z
scoreboard players operation diff_x workspace -= @s sbpg.prev_x
scoreboard players operation diff_y workspace -= @s sbpg.prev_y
scoreboard players operation diff_z workspace -= @s sbpg.prev_z
# Extrapolate to 3 ticks time
scoreboard players operation next_x workspace = @s sbpg.x
scoreboard players operation next_y workspace = @s sbpg.y
scoreboard players operation next_z workspace = @s sbpg.z
scoreboard players operation next_x workspace += diff_x workspace
scoreboard players operation next_x workspace += diff_x workspace
scoreboard players operation next_x workspace += diff_x workspace
scoreboard players operation next_y workspace += diff_y workspace
scoreboard players operation next_y workspace += diff_y workspace
scoreboard players operation next_y workspace += diff_y workspace
scoreboard players operation next_z workspace += diff_z workspace
scoreboard players operation next_z workspace += diff_z workspace
scoreboard players operation next_z workspace += diff_z workspace

# Forwardness of current pos
scoreboard players operation dot_x workspace = @s sbpg.x
scoreboard players operation dot_y workspace = @s sbpg.y
scoreboard players operation dot_z workspace = @s sbpg.z
scoreboard players operation dot_x workspace -= portal_x workspace
scoreboard players operation dot_y workspace -= portal_y workspace
scoreboard players operation dot_z workspace -= portal_z workspace
scoreboard players operation dot_x workspace *= forward_x workspace
scoreboard players operation dot_y workspace *= forward_y workspace
scoreboard players operation dot_z workspace *= forward_z workspace
scoreboard players operation current_forwardness workspace = dot_x workspace
scoreboard players operation current_forwardness workspace += dot_y workspace
scoreboard players operation current_forwardness workspace += dot_z workspace
# Forwardness of future pos
scoreboard players operation dot_x workspace = next_x workspace
scoreboard players operation dot_y workspace = next_y workspace
scoreboard players operation dot_z workspace = next_z workspace
scoreboard players operation dot_x workspace -= portal_x workspace
scoreboard players operation dot_y workspace -= portal_y workspace
scoreboard players operation dot_z workspace -= portal_z workspace
scoreboard players operation dot_x workspace *= forward_x workspace
scoreboard players operation dot_y workspace *= forward_y workspace
scoreboard players operation dot_z workspace *= forward_z workspace
scoreboard players operation future_forwardness workspace = dot_x workspace
scoreboard players operation future_forwardness workspace += dot_y workspace
scoreboard players operation future_forwardness workspace += dot_z workspace

execute at @s[type=minecraft:player,gamemode=!spectator,nbt=!{RootVehicle:{Entity:{id:"minecraft:rabbit"}}}] if entity @e[distance=..2,tag=sbpg.portal,tag=ceiling,tag=!45_portal,tag=!floor] unless entity @e[type=item_display,tag=funnel,distance=..2] run function sbpg:portals/enter
execute if score current_forwardness workspace matches 1.. if score future_forwardness workspace matches ..0 at @s[type=!minecraft:player,tag=!hovering] unless entity @e[type=item_display,tag=funnel,distance=..2] run function sbpg:portals/enter

execute at @s[type=!minecraft:player,tag=!hovering,tag=!funnel_r] if entity @e[distance=..0.65,tag=sbpg.portal,tag=!45_portal,tag=!floor,tag=!ceiling] unless entity @e[type=item_display,tag=funnel,distance=..2] run function sbpg:portals/enter

execute at @s[type=minecraft:player,gamemode=!spectator,nbt=!{RootVehicle:{Entity:{id:"minecraft:rabbit"}}}] if entity @e[distance=..0.65,tag=sbpg.portal,tag=!45_portal,tag=!floor,tag=!ceiling] unless entity @e[type=item_display,tag=funnel,distance=..2] run function sbpg:portals/enter



execute if entity @s[nbt={OnGround:1b}] at @e[tag=sbpg.portal_main,tag=sbpg.portal_first,tag=floor,distance=..2] positioned ^ ^-0.5 ^0.1 if entity @s[distance=..1.5] positioned ^ ^0.5 ^0.9 if entity @e[tag=sbpg.portal_main,tag=sbpg.portal_second,tag=!floor,limit=1] run function sbpg:portals/enter
execute if entity @s[nbt={OnGround:1b}] at @e[tag=sbpg.portal_main,tag=sbpg.portal_second,tag=floor,distance=..2] positioned ^ ^-0.5 ^0.1 if entity @s[distance=..1.5] positioned ^ ^0.5 ^0.9 if entity @e[tag=sbpg.portal_main,tag=sbpg.portal_first,tag=!floor,limit=1] run function sbpg:portals/enter



execute positioned ^ ^1 ^ if score current_forwardness workspace matches 1.. if score future_forwardness workspace matches ..0 at @s[type=minecraft:player,gamemode=!spectator,nbt=!{RootVehicle:{Entity:{id:"minecraft:rabbit"}}},nbt=!{RootVehicle:{Entity:{id:"minecraft:turtle"}}}] unless entity @e[type=item_display,tag=funnel,distance=..2] positioned ~ ~-0.7 ~ if entity @e[distance=..1.4,tag=sbpg.portal,tag=floor] run function sbpg:portals/enter
