
team join blue @s[type=minecraft:item_display,tag=bghost]
team join orange @s[type=minecraft:item_display,tag=oghost]

execute at @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=sbpg.portal_main,tag=!floor,tag=!ceiling,tag=!45_portal,limit=1] run tp @s[tag=bghost] ^ ^0.23 ^ ~180 ~
execute at @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=sbpg.portal_main,tag=floor,tag=east,limit=1] run tp @s[tag=bghost] ^ ^-0.2 ^1.4 ~ ~180
execute at @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=sbpg.portal_main,tag=floor,tag=south,limit=1] run tp @s[tag=bghost] ^-0.1 ^-0.2 ^1.4 ~ ~180
execute at @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=sbpg.portal_main,tag=floor,tag=west,limit=1] run tp @s[tag=bghost] ^-0.1 ^0.25 ^1.4 ~ ~180
execute at @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=sbpg.portal_main,tag=floor,tag=north,limit=1] run tp @s[tag=bghost] ^ ^0.25 ^1.4 ~ ~180
execute at @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=sbpg.portal_main,tag=ceiling,limit=1] run tp @s[tag=bghost] ^ ^-0.73 ^-1.5 ~ ~180
execute at @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_first,tag=sbpg.portal_main,tag=45_portal,limit=1] run tp @s[tag=bghost] ^ ^-0.25 ^0.9 ~180 ~90

execute at @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_second,tag=sbpg.portal_main,tag=!floor,tag=!ceiling,tag=!45_portal,limit=1] run tp @s[tag=oghost] ^ ^0.23 ^ ~180 ~
execute at @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_second,tag=sbpg.portal_main,tag=floor,tag=east,limit=1] run tp @s[tag=oghost] ^ ^-0.2 ^1.4 ~ ~180
execute at @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_second,tag=sbpg.portal_main,tag=floor,tag=south,limit=1] run tp @s[tag=oghost] ^-0.1 ^-0.2 ^1.4 ~ ~180
execute at @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_second,tag=sbpg.portal_main,tag=floor,tag=west,limit=1] run tp @s[tag=oghost] ^-0.1 ^0.25 ^1.4 ~ ~180
execute at @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_second,tag=sbpg.portal_main,tag=floor,tag=north,limit=1] run tp @s[tag=oghost] ^ ^0.25 ^1.4 ~ ~180
execute at @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_second,tag=sbpg.portal_main,tag=ceiling,limit=1] run tp @s[tag=oghost] ^ ^-0.73 ^-1.5 ~ ~180
execute at @e[type=minecraft:area_effect_cloud,tag=sbpg.portal_second,tag=sbpg.portal_main,tag=45_portal,limit=1] run tp @s[tag=oghost] ^ ^-0.25 ^0.9 ~180 ~90

execute if entity @s[tag=bghost] unless entity @e[tag=sbpg.portal_first] run kill @s
execute if entity @s[tag=oghost] unless entity @e[tag=sbpg.portal_second] run kill @s