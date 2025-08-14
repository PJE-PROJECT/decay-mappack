execute if block ~ ~-3 ~ minecraft:air run kill @s
execute if entity @e[type=minecraft:glow_item_frame,distance=..2.5,tag=indicator,tag=active,limit=1] run tag @s[tag=!active,tag=!opened,tag=!auto] add active
execute unless entity @e[type=minecraft:glow_item_frame,distance=..2.5,tag=indicator,tag=active,limit=1] run tag @s[tag=active,tag=opened,tag=!auto] remove active





execute if entity @s[tag=N] align xyz positioned ^1 ^-2 ^1 if entity @a[dx=2,dy=2,dz=1,tag=test_subject,tag=!b_pic,tag=!o_pic,limit=1] run tag @s[tag=auto,tag=!active,tag=!opened] add active
execute if entity @s[tag=N] align xyz positioned ^2 ^-2 ^-1.5 if entity @a[dx=4,dy=2,dz=0,tag=test_subject,tag=!b_pic,tag=!o_pic,limit=1] run tag @s[tag=active,tag=opened,tag=auto] remove active

execute if entity @s[tag=S] align xyz positioned ^-1 ^-2 ^1 if entity @a[dx=2,dy=2,dz=0,tag=test_subject,tag=!b_pic,tag=!o_pic,limit=1] run tag @s[tag=auto,tag=!active,tag=!opened] add active
execute if entity @s[tag=S] align xyz positioned ^-2 ^-2 ^-1.5 if entity @a[dx=4,dy=2,dz=0,tag=test_subject,tag=!b_pic,tag=!o_pic,limit=1] run tag @s[tag=active,tag=opened,tag=auto] remove active

execute if entity @s[tag=E] align xyz positioned ^1 ^-2 ^1 if entity @a[dx=0,dy=2,dz=2,tag=test_subject,tag=!b_pic,tag=!o_pic,limit=1] run tag @s[tag=auto,tag=!active,tag=!opened] add active
execute if entity @s[tag=E] align xyz positioned ^2 ^-2 ^-1.5 if entity @a[dx=0,dy=2,dz=4,tag=test_subject,tag=!b_pic,tag=!o_pic,limit=1] run tag @s[tag=active,tag=opened,tag=auto] remove active

execute if entity @s[tag=W] align xyz positioned ^-1 ^-2 ^1 if entity @a[dx=0,dy=2,dz=2,tag=test_subject,tag=!b_pic,tag=!o_pic,limit=1] run tag @s[tag=auto,tag=!active,tag=!opened] add active
execute if entity @s[tag=W] align xyz positioned ^-2 ^-2 ^-1.5 if entity @a[dx=0,dy=2,dz=4,tag=test_subject,tag=!b_pic,tag=!o_pic,limit=1] run tag @s[tag=active,tag=opened,tag=auto] remove active






execute if entity @s[tag=active,scores={animationtime=1}] run function mapmaker:portal_vertdoor/open
scoreboard players add @s[tag=active,tag=!opened] animationtime 1
execute if entity @s[tag=active,scores={animationtime=71..}] run function mapmaker:portal_vertdoor/open_end


execute if entity @s[tag=opened,tag=!active,scores={animationtime=1}] run function mapmaker:portal_vertdoor/close
scoreboard players add @s[tag=opened,tag=!active] animationtime 1
execute if entity @s[tag=opened,tag=!active,scores={animationtime=74..}] run function mapmaker:portal_vertdoor/close_end