effect clear @a blindness
gamemode creative @a
item replace entity @e[type=item_display,tag=white.fakesky.display] container.0 with white_terracotta
kill @e[tag=shadowmap_stopframe]
execute as @a[limit=1] at @s run tp @s ^ ^ ^-12
function excursion_funnel:update
