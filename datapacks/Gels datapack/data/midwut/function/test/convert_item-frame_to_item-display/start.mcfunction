execute as @e[type=minecraft:item_frame,nbt=!{Item:{id:"minecraft:filled_map",components:{"minecraft:map_id":12}}},tag=!gel] at @s run function midwut:test/convert_item-frame_to_item-display/main

#function midwut:test/convert_item-frame_to_item-display/start

function portal:light/glassupdate
tag @e[type=minecraft:item_display,nbt={item:{id:"minecraft:mossy_cobblestone"}}] add portalblock.model
tag @e[type=minecraft:item_display,nbt={item:{id:"minecraft:black_glazed_terracotta"}}] add portalblock.model
tag @e[type=minecraft:item_display,nbt={item:{id:"minecraft:red_glazed_terracotta"}}] add portalblock.model
tag @e[type=minecraft:item_display,nbt={item:{id:"minecraft:infested_stone_bricks"}}] add portalblock.model
tag @e[type=minecraft:item_display,nbt={item:{id:"minecraft:brown_glazed_terracotta"}}] add portalblock.model
tag @e[type=minecraft:item_display,nbt={item:{id:"minecraft:infested_cobblestone"}}] add portalblock.model
tag @e[type=minecraft:item_display,nbt={item:{id:"minecraft:infested_mossy_stone_bricks"}}] add portalblock.model
tag @e[type=minecraft:item_display,nbt={item:{id:"minecraft:light_gray_glazed_terracotta"}}] add portalblock.model
tag @e[type=minecraft:item_display,nbt={item:{id:"minecraft:cyan_gray_glazed_terracotta"}}] add portalblock.model
tag @e[type=minecraft:item_display,nbt={item:{id:"minecraft:blue_glazed_terracotta"}}] add portalblock.model
tag @e[type=minecraft:item_display,nbt={item:{id:"minecraft:green_glazed_terracotta"}}] add portalblock.model
tag @e[type=minecraft:item_display,nbt={item:{id:"minecraft:coal"}}] add portalblock.model
tag @e[type=minecraft:item_display,nbt={item:{id:"minecraft:charcoal"}}] add portalblock.model
tag @e[type=minecraft:item_display,nbt={item:{id:"minecraft:netherite_ingot"}}] add portalblock.model
tag @e[type=minecraft:item_display,nbt={item:{id:"minecraft:iron_ingot"}}] add portalblock.model