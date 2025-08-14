# Summon all entities
#summon armor_stand ~ ~ ~ {Team:"sbpg.blue",Invisible:1b,Tags:["sbpg.portal","sbpg.portal_core","sbpg.portal_new"],Pose:{Head:[1.0f,0.0f,0.0f]},ArmorItems:[{},{},{},{}],NoGravity:1b,Invulnerable:1b,Fire:32767s,Marker:1b}
#summon armor_stand ~ ~ ~ {Team:"sbpg.blue",Invisible:1b,Tags:["sbpg.portal","sbpg.portal_inner","sbpg.portal_new"],Pose:{Head:[1.0f,0.0f,0.0f]},ArmorItems:[{},{},{},{}],NoGravity:1b,Invulnerable:1b,Fire:32767s,Marker:1b}
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["sbpg.portal","sbpg.portal_edge","sbpg.portal_new","ceiling"],Pose:{Head:[1.0f,0.0f,0.0f]},ArmorItems:[{},{},{},{id:"minecraft:leather_boots",components:{"minecraft:damage":6,"minecraft:dyed_color":{rgb:24831},"minecraft:unbreakable":{}},count:1}],NoGravity:1b,Invulnerable:1b,Fire:32767s,Marker:1b}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["sbpg.portal","sbpg.portal_main","al","sbpg.portal_new","ceiling"]}

# Initialise main AEC (get matrices, apply ID, etc.)
execute as @e[type=minecraft:area_effect_cloud,distance=..1,tag=sbpg.portal_new,limit=1] run function sbpg:portals/initialise_aec

# Initialise armorstands (rotate heads, apply ID, etc.)
execute as @e[type=minecraft:armor_stand,distance=..1,tag=sbpg.portal_new] run function sbpg:portals/initialise_as