effect clear @a blindness
gamerule sendCommandFeedback false
gamemode adventure @a
gamerule sendCommandFeedback true
item replace entity @e[type=item_display,tag=white.fakesky.display] container.0 with white_terracotta
kill @e[tag=shadowmap_stopframe]
tp @a[limit=1] @e[type=marker,tag=player.pos.light.resume,limit=1]
function excursion_funnel:update
execute if score update map matches 1.. as @a[limit=1] at @s run function portal:maps/updatemap
kill @e[tag=player.pos.light.resume]