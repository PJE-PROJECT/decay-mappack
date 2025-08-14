## Y
execute if entity @e[type=minecraft:item_display,distance=..1.9,tag=funnel_h,limit=1] if entity @e[type=minecraft:item_display,distance=..1.9,tag=funnel_y,limit=1] run data modify entity @s Motion[1] set value 0.0d
execute if entity @e[type=minecraft:item_display,distance=..1.9,tag=funnel_h,limit=1] unless entity @e[type=minecraft:item_display,distance=..1.9,tag=funnel_y,limit=1] run function portal:funnel/slide/y

## NS
execute if entity @e[type=minecraft:item_display,distance=..1.9,tag=funnel_h,limit=1,tag=S] run data modify entity @s Motion[2] set value 0.08d
execute if entity @e[type=minecraft:item_display,distance=..1.9,tag=funnel_h,limit=1,tag=N] run data modify entity @s Motion[2] set value -0.08d
execute if entity @e[type=minecraft:item_display,distance=..1.9,tag=funnel_h,limit=1,tag=!E,tag=!W] unless entity @e[type=minecraft:item_display,distance=..1.9,tag=funnel_h,limit=1,tag=!S,tag=!W] unless entity @e[type=minecraft:item_display,distance=..1.9,tag=funnel_y,limit=1] run function portal:funnel/slide/x

## EW
execute if entity @e[type=minecraft:item_display,distance=..1.9,tag=funnel_h,limit=1,tag=E] run data modify entity @s Motion[0] set value 0.08d
execute if entity @e[type=minecraft:item_display,distance=..1.9,tag=funnel_h,limit=1,tag=W] run data modify entity @s Motion[0] set value -0.08d
execute if entity @e[type=minecraft:item_display,distance=..1.9,tag=funnel_h,limit=1,tag=!S,tag=!N] unless entity @e[type=minecraft:item_display,distance=..1.9,tag=funnel_h,limit=1,tag=!E,tag=!W] unless entity @e[type=minecraft:item_display,distance=..1.9,tag=funnel_y,limit=1] run function portal:funnel/slide/z

## NS
execute if entity @e[type=minecraft:item_display,distance=..1.9,tag=funnel_y,limit=1,tag=U] if block ~ ~2 ~ #excursion_funnel:excursion_funnel_air run data modify entity @s Motion[1] set value 0.08d
execute if entity @e[type=minecraft:item_display,distance=..1.9,tag=funnel_y,limit=1,tag=D] run data modify entity @s Motion[1] set value -0.08d
execute if entity @e[type=minecraft:item_display,distance=..1.9,tag=funnel_y,limit=1] unless entity @e[type=minecraft:item_display,distance=..1.9,tag=funnel_h,limit=1] run function portal:funnel/slide/vertical


#FLOOR
execute if entity @e[tag=sbpg.portal_first,tag=sbpg.portal_main,tag=floor,distance=..2] if entity @s[tag=portable] run function portal:funnel/portals_blue_to_orange
execute if entity @e[tag=sbpg.portal_second,tag=sbpg.portal_main,tag=floor,distance=..2] if entity @s[tag=portable] run function portal:funnel/portals_orange_to_blue

#WALL
execute if entity @e[tag=sbpg.portal_first,tag=sbpg.portal_main,tag=!floor,tag=!ceiling,tag=!45_portal,distance=..0.8] if entity @s[tag=portable] run function portal:funnel/portals_blue_to_orange
execute if entity @e[tag=sbpg.portal_second,tag=sbpg.portal_main,tag=!floor,tag=!ceiling,tag=!45_portal,distance=..0.8] if entity @s[tag=portable] run function portal:funnel/portals_orange_to_blue

#CEILING
execute if entity @e[tag=sbpg.portal_first,tag=sbpg.portal_main,tag=ceiling,distance=..1.3] if entity @s[tag=portable] run function portal:funnel/portals_blue_to_orange
execute if entity @e[tag=sbpg.portal_second,tag=sbpg.portal_main,tag=ceiling,distance=..1.3] if entity @s[tag=portable] run function portal:funnel/portals_orange_to_blue



execute unless score @s funnel_portals_delay = @s funnel_portals_delay run scoreboard players set @s funnel_portals_delay 0