execute unless entity @a[limit=1] run scoreboard players set player config 0

execute as @a[tag=ambient,limit=1] at @s run function portal:ambient/global
execute as @e[tag=al] at @s run function portal:ambient/local
spectate @e[type=minecraft:armor_stand,tag=loading_logo_stand,limit=1] @s

execute as @a[tag=menu,limit=1] at @s run function portal:menu/menu
execute unless entity @a[limit=1] run scoreboard players set player config 0
execute if score player config matches 0 if entity @a[limit=1] run scoreboard players set menumusic timer 0

execute if score player config matches 0 as @a[tag=test_subject,limit=1] run function portal:menu/open


execute if score player config matches 0 if entity @a[tag=!test_subject,limit=1] run function portal:ambient/restart
execute if entity @a[limit=1] run scoreboard players set player config 1

execute if score pause timer matches 1.. run return 0

execute if entity @a[tag=itempicker_activated,tag=!pickoff_block,limit=1,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["itempicker"]}},Slot:-106b}]}] run tag @e[tag=prop,tag=hovering,tag=hovering_motion,limit=1] remove hovering
execute as @e[tag=prop,tag=hovering,tag=hovering_motion] run function portal:tick_hovering

# AMBIENT ICONS
execute as @e[tag=ambient.sound.icon] at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~90

# MOTION BLUR
execute positioned as @a[tag=!b_pic,tag=!o_pic,limit=1] if score motion_blur config matches 1 unless entity @e[tag=motion_blur,limit=1] run summon minecraft:item_display ~ ~ ~ {Tags:["motion_blur"],item:{id:"minecraft:red_stained_glass",components:{"minecraft:custom_model_data":11},Count:1b}}
execute positioned as @a[tag=!b_pic,tag=!o_pic,limit=1] if score motion_blur config matches 1 if entity @e[tag=motion_blur,limit=1] run tp @e[tag=motion_blur] ~ ~ ~



## DEATH ANIM
execute as @a[tag=death_anim,limit=1] at @s run function portal:death_anim/tick with storage portal:killed_box_rot

## WAKEUP ANIM
execute if score wakeup_anim buffer matches 1.. as @e[type=minecraft:armor_stand,tag=camera_anim] at @s run function portal:wakeup_anim/tick

# UPDATE MAP TIMER

execute if score update map matches 1.. if score lightresume map matches 0 at @a[limit=1] run function portal:maps/loadtimer

execute if score update load matches 1.. if score lightresume load matches 0 at @a[limit=1] run function saves:loadtimer

#PANEL REPIS
effect clear @e[tag=panel_lev,limit=6] levitation
tag @e[tag=panel_lev,limit=6] remove panel_lev
execute as @a[limit=1] positioned as @s if entity @e[type=item_display,tag=arm64,distance=..4,limit=1] run function portal:panel_lift
execute as @e[tag=cube,limit=5] positioned as @s if entity @e[type=item_display,tag=arm64,distance=..4,limit=1] run function portal:panel_lift


# Inventory

execute if score gunhold config matches 1 run tag @a[tag=test_subject,tag=!gun_hold] add gun_hold
execute if score gunhold config matches 0 run clear @a[tag=test_subject,tag=gun_hold]
execute if score gunhold config matches 0 run kill @e[type=minecraft:interaction,tag=sbpg.click_detector]
execute if score gunhold config matches 0 run tag @a[tag=test_subject,tag=gun_hold] remove gun_hold



execute as @a[tag=gun_hold,tag=itempicker_activated,limit=1,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["itempicker"]}},Slot:-106b}]}] at @s run function portal:item_pick/pickoff
execute as @a[tag=itempicker_activated,tag=!gun_hold,limit=1,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["itempicker"]}},Slot:-106b}]}] at @s run function portal:item_pick/nogun/pickoff
execute as @a[tag=gun_hold,tag=!itempicker_activated,limit=1,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["itempicker"]}},Slot:-106b}]}] at @s run function portal:item_pick/trigger
execute as @a[tag=!gun_hold,tag=!itempicker_activated,limit=1,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["itempicker"]}},Slot:-106b}]}] at @s run function portal:item_pick/nogun/trigger
execute as @a[tag=test_subject,tag=itempicker_activated,tag=!pickoff_block,limit=1] at @s run function portal:item_pick/hovering_raycast
execute as @a[tag=test_subject,tag=gun_hold,tag=!loading_logo_load,tag=!loading_logo_end,tag=!load_titles,limit=1] run function portal:inv
execute as @a[tag=test_subject,tag=!gun_hold,tag=!loading_logo_load,tag=!loading_logo_end,tag=!load_titles,limit=1] run function portal:inv_nogun

#PODSKAZKI
execute if score hints config matches 1 positioned as @a[limit=1] run function portal:hints/main

#huinya kakaya-to
function portal:others/tag

#Goo
execute as @e[type=minecraft:armor_stand,tag=gel_blob] at @s if block ~ ~1 ~ #portal:water run function portal:goo_splash
execute as @e[type=minecraft:armor_stand,tag=prop] at @s if block ~ ~1 ~ #portal:water run function portal:goo_splash
execute if entity @e[type=minecraft:armor_stand,tag=watersplash,limit=1] run function portal:goo_splash

execute positioned as @a[tag=test_subject,tag=!goo_killed] if block ~ ~0.5 ~ #portal:water run function portal:goo_player
execute as @a[tag=test_subject,tag=goo_killed] positioned as @s run function portal:goo_player
scoreboard players set @a[tag=test_subject,tag=!goo_killed,tag=!death_anim,tag=!loading_logo_end,tag=!loading_logo_load] time 0


#Loading

execute as @a[tag=load_titles,limit=1,scores={loadtitles=0}] run function portal:loading_logo/pos/titles/pos
execute as @a[tag=load_titles,limit=1,scores={loadtitles=1..}] at @s positioned as @e[tag=playerstart,distance=..10] run function portal:loading_logo/load_titles


execute as @a[tag=test_subject,tag=loading_logo_load,limit=1,tag=!loading_logo,scores={time=0}] run function portal:loading_logo/pos/load/pos
execute as @a[tag=test_subject,tag=loading_logo_load,limit=1,scores={time=1..}] positioned as @e[tag=savedplayercoords] run function portal:loading_logo/loading


execute as @a[tag=test_subject,tag=loading_logo_end,limit=1,tag=!loading_logo,scores={time=0}] run function portal:loading_logo/pos/newgame/pos
execute as @a[tag=test_subject,tag=loading_logo_end,limit=1,scores={time=1..}] at @s positioned as @e[tag=playerstart,distance=..10] run function portal:loading_logo/loading



#Portalgun anims
execute as @a[tag=test_subject,tag=portalgun_anim] run function portal:portalgun_anims

#Crosshair
execute as @a[tag=test_subject,tag=blackscreen,limit=1] run function portal:blackscreen

execute as @a[tag=!menu,tag=!gun_hold,tag=!blackscreen,tag=!death_anim,tag=!goo_killed,tag=!load_titles,tag=!titlesfade,tag=!loading_logo,limit=1] unless score elevator_departure time matches 70.. if score wakeup_anim buffer matches 0 if score lightresume load matches 0 if score update load matches 0 run function portal:crosshair_base
execute as @a[tag=test_subject,tag=gun_hold,tag=!blackscreen,tag=!death_anim,tag=!goo_killed,tag=!load_titles,tag=!titlesfade,tag=!loading_logo,limit=1] unless score elevator_departure time matches 70.. if score wakeup_anim buffer matches 0 if score lightresume load matches 0 if score update load matches 0 run function portal:crosshair
execute as @a[tag=!test_subject,tag=!menu,limit=1] unless score elevator_departure time matches 70.. if score wakeup_anim buffer matches 0 if score lightresume load matches 0 if score update load matches 0 run function portal:crosshair_base
execute as @a[tag=test_subject,tag=gun_hold,tag=itempicker_activated,tag=!blackscreen,tag=!death_anim,tag=!load_titles,tag=!titlesfade,tag=!goo_killed,tag=!loading_logo,limit=1] unless score elevator_departure time matches 70.. if score wakeup_anim buffer matches 0 if score lightresume load matches 0 if score update load matches 0 run function portal:crosshair


#See-through system
gamerule sendCommandFeedback false
execute if score pic timer matches 2.. run function portal:tp_pic
execute unless entity @e[tag=sbpg.portal_first,limit=1] run item replace entity @e[type=minecraft:armor_stand,tag=o_pic] armor.head with minecraft:dark_oak_slab
execute unless entity @e[tag=sbpg.portal_second,limit=1] run item replace entity @e[type=minecraft:armor_stand,tag=b_pic] armor.head with minecraft:dark_oak_slab
execute unless entity @e[tag=sbpg.portal_first,limit=1] run kill @e[type=minecraft:armor_stand,tag=b_pic]
execute unless entity @e[tag=sbpg.portal_second,limit=1] run kill @e[type=minecraft:armor_stand,tag=o_pic]
execute if entity @e[tag=sbpg.portal_first,limit=1] run item replace entity @e[type=minecraft:armor_stand,tag=o_pic] armor.head with minecraft:red_stained_glass[minecraft:custom_model_data=4]
execute if entity @e[tag=sbpg.portal_second,limit=1] run item replace entity @e[type=minecraft:armor_stand,tag=b_pic] armor.head with minecraft:red_stained_glass[minecraft:custom_model_data=3]
execute if entity @a[tag=b_pic] run item replace entity @e[type=minecraft:armor_stand,tag=pic] armor.head with minecraft:dark_oak_slab
execute if entity @a[tag=o_pic] run item replace entity @e[type=minecraft:armor_stand,tag=pic] armor.head with minecraft:dark_oak_slab


execute at @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_second,limit=1] if score pic timer matches 1 run tp @a[tag=test_subject,tag=b_pic,limit=1] ^ ^-0.5 ^0.25 ~ ~-6
execute at @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,limit=1] if score pic timer matches 1 run tp @a[tag=test_subject,tag=o_pic,limit=1] ^ ^-0.5 ^0.25 ~ ~-6


execute if score pic timer matches 1 if entity @a[tag=test_subject,tag=b_pic,limit=1] run bossbar set portal_proj players @a
execute if score pic timer matches 1 if entity @a[tag=test_subject,tag=o_pic,limit=1] run bossbar set portal_proj players @a


execute if entity @a[tag=b_pic] run scoreboard players add pic timer 1
execute if entity @a[tag=o_pic] run scoreboard players add pic timer 1


gamerule sendCommandFeedback true
#############

#Zhopa gorit


execute as @a[scores={health=..5}] run function portal:death_anim/start
execute as @a[scores={death=1..}] run tag @s add loading_logo_load
execute as @a[scores={death=1..}] run scoreboard players set @s death 0

execute positioned as @a[tag=test_subject,tag=burnpain,scores={burn_delay=0},limit=1] run playsound minecraft:pl_burnpain2 ambient @a ~ ~ ~ 0.5 1 0
execute as @a[tag=test_subject,tag=burnpain,scores={burn_delay=0},limit=1] run damage @s 4 minecraft:wither

scoreboard players add @a[tag=test_subject,tag=burnpain] burn_delay 1
tag @a[tag=test_subject,tag=burnpain,scores={burn_delay=14..},limit=1] remove burnpain
scoreboard players set @a[tag=test_subject,scores={burn_delay=14..},limit=1] burn_delay 0


# Other

execute store result score @a[tag=test_subject,limit=1] foodLevel run data get entity @a[tag=test_subject,limit=1] foodLevel
effect give @a[tag=test_subject,scores={foodLevel=7..}] minecraft:hunger 1 255 true
effect give @a[tag=test_subject,scores={foodLevel=0}] minecraft:saturation 1 4 true
effect give @a[tag=test_subject,limit=1] minecraft:regeneration infinite 3 true

execute as @a[tag=test_subject] positioned as @s if entity @e[type=item_display,tag=funnel,distance=..3] run function portal:floor_fall

execute as @a[tag=test_subject] positioned as @s if entity @e[type=minecraft:area_effect_cloud,distance=..7,tag=sbpg.portal,tag=sbpg.active] run function portal:floor_fall
execute as @e[type=minecraft:armor_stand,tag=cube,tag=!hoverignore] positioned as @s if entity @e[type=minecraft:area_effect_cloud,distance=..7,tag=sbpg.portal,tag=sbpg.active] run function portal:floor_fall
effect give @a[tag=test_subject] minecraft:invisibility infinite 255 true
effect give @a[tag=test_subject] minecraft:haste infinite 127 true
effect give @a[tag=test_subject] minecraft:mining_fatigue infinite 255 true
data modify entity @e[type=minecraft:armor_stand,tag=cube,sort=random,limit=1] Rotation[1] set value 0.0f


#Annigilation
execute as @e[tag=prop,tag=fizzled] at @s run function portal:fizzle/main


#FOOTSTEPS AND JUMP SOUNDS

execute at @a[scores={walk=160..}] run function portal:player_sounds/walk
execute at @a[scores={crouch=60..}] run function portal:player_sounds/crouch
execute at @a[scores={jump=1..}] run function portal:player_sounds/jump

#Mapmaker
execute at @a[tag=test_subject,tag=!loading_logo_end,tag=!loading_logo_load,tag=!load_titles,limit=1] unless entity @e[type=minecraft:item_display,distance=..5,tag=elevator] run function mapmaker:mapmaker
execute at @a[tag=!test_subject,limit=1] run function mapmaker:mapmaker
execute at @a[tag=test_subject,tag=!loading_logo_end,tag=!loading_logo_load,tag=!load_titles,limit=1] as @e[type=minecraft:item_display,distance=..2,tag=v_portalgun,tag=!picked] positioned as @s run function mapmaker:portal_pgun/pgun-mechanic


scoreboard players reset @a[scores={portalgun=1..}] portalgun

#Portals tag
execute if score pause timer matches 0 if score ghosting config matches 1 positioned as @a[limit=1] if entity @e[tag=sbpg.portal_first,limit=1] unless entity @e[type=minecraft:item_display,tag=bghost] run summon minecraft:item_display ~ ~ ~ {item_display:fixed,item:{id:"minecraft:leather_boots",components:{"minecraft:damage":3,"minecraft:unbreakable":{}},count:1},Tags:["ghost","bghost"],Glowing:1b,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,0.9f,1.0f],translation:[0.0f,0.0f,0.0f]}}
execute if score pause timer matches 0 if score ghosting config matches 1 positioned as @a[limit=1] if entity @e[tag=sbpg.portal_second,limit=1] unless entity @e[type=minecraft:item_display,tag=oghost] run summon minecraft:item_display ~ ~ ~ {item_display:fixed,item:{id:"minecraft:leather_boots",components:{"minecraft:damage":3,"minecraft:unbreakable":{}},count:1},Tags:["ghost","oghost"],Glowing:1b,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,0.9f,1.0f],translation:[0.0f,0.0f,0.0f]}}

execute if score pause timer matches 0 if score ghosting config matches 1 positioned as @a[limit=1] as @e[type=minecraft:item_display,tag=ghost] run function portal:ghosting

execute if entity @e[tag=sbpg.portal,limit=1] run function portal:portals

#Lasers
execute as @e[type=minecraft:armor_stand,tag=laser_cube,tag=laser_cube_new,sort=random,limit=1] run function laser:setup
execute as @e[type=minecraft:item_display,tag=laser_emitter,tag=laser_emitter_new,sort=random,limit=1] run function laser:setup
#Indicators
execute if score indicators_setup timer matches 1.. run function portal:indicators_setup
execute if score indicators_setup timer matches 1.. run scoreboard players remove indicators_setup timer 1

execute if score indicators.enable buffer matches 1 run function portal:indicators_activate
execute if score indicators.disable buffer matches 1 run function portal:indicators_disable



#Funnel


execute as @e[type=minecraft:armor_stand,tag=prop,tag=!hovering,tag=!useless,tag=!hoverignore] positioned as @s if entity @e[type=minecraft:item_display,distance=..1.5,tag=funnel] run function portal:funnel/funnel_tick
execute as @e[type=minecraft:armor_stand,tag=gel_blob] positioned as @s if entity @e[type=minecraft:item_display,distance=..1.5,tag=funnel] run function portal:funnel/funnel_tick


execute at @a[tag=in_funnel] unless entity @e[type=minecraft:slime,tag=funnel_r,limit=1] run function portal:funnel/funnel_enter

execute if entity @e[type=minecraft:slime,tag=funnel_r,limit=1] as @a[limit=1] positioned as @s run function portal:funnel/funnel_tick


execute at @a[gamemode=!spectator,limit=1] if entity @e[distance=..1.4,tag=funnel] run tag @a add in_funnel

execute as @a[tag=in_funnel,scores={funnel_enter_delay=0},limit=1] at @s unless entity @e[distance=..1.6,tag=funnel] run function portal:funnel/funnel_exit

execute as @e[tag=portable] if score @s funnel_portals_delay matches 1.. run scoreboard players add @s funnel_portals_delay 1
execute as @e[tag=portable] if score @s funnel_portals_delay matches 20.. run scoreboard players set @s funnel_portals_delay 0


#Zloyebuchiy lift
execute at @a[tag=test_subject,limit=1] if entity @e[type=minecraft:item_display,distance=..19,tag=elevator,limit=1] run function elevator:tick

#CRASH

execute if score crash timer matches 1 run function ant:crash
execute if score crash timer matches 4 run function ant:crash
execute if score crash timer matches 1.. run scoreboard players add crash timer 1


