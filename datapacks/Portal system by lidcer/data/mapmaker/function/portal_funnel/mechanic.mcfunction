
execute positioned ~ ~0.3 ~ if entity @e[type=glow_item_frame,tag=indicator,tag=active,distance=..1.5,limit=1] unless entity @e[type=glow_item_frame,tag=indicator,tag=!active,distance=..1.5,limit=1] positioned ~ ~-0.3 ~ run setblock ^ ^ ^1 redstone_block
execute positioned ~ ~0.3 ~ if entity @e[type=glow_item_frame,tag=indicator,tag=!active,distance=..1.5,limit=1] positioned ~ ~-0.3 ~ run setblock ^ ^ ^1 granite


execute positioned ~ ~-0.9 ~ if entity @e[type=glow_item_frame,tag=indicator,tag=active,distance=..2,limit=1] unless entity @e[type=glow_item_frame,tag=indicator,tag=!active,distance=..2,limit=1] positioned ~ ~0.9 ~ run setblock ^ ^-1 ^1 redstone_block
execute positioned ~ ~-0.9 ~ if entity @e[type=glow_item_frame,tag=indicator,tag=!active,distance=..2,limit=1] positioned ~ ~0.9 ~ run setblock ^ ^-1 ^1 granite


execute if block ^ ^ ^1 redstone_block run function mapmaker:portal_funnel/active1
execute if block ^ ^-1 ^1 redstone_block run function mapmaker:portal_funnel/active2
execute unless block ^ ^ ^1 redstone_block run function mapmaker:portal_funnel/unactive1
execute unless block ^ ^-1 ^1 redstone_block run function mapmaker:portal_funnel/unactive2

execute if entity @s[tag=active,tag=emitter_blue] run function mapmaker:portal_funnel/effects_blue
execute if entity @s[tag=active,tag=emitter_orange] run function mapmaker:portal_funnel/effects_orange

scoreboard players add @s[tag=active] animationtime 1
scoreboard players set @s[scores={animationtime=17..}] animationtime 1