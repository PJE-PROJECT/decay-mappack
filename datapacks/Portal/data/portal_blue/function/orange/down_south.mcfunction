
execute if block ~ ~ ~ #portal:portal_usable_surface unless block ~1 ~ ~ #portal:portal_usable_surface unless block ~ ~ ~1 #portal:portal_usable_surface unless block ~-1 ~ ~ #portal:portal_usable_surface unless block ~ ~ ~-1 #portal:portal_usable_surface run tag @e[tag=this] add 6

execute unless entity @e[tag=this,tag=6] if block ~ ~ ~ #portal:portal_usable_surface unless block ~ ~ ~1 #portal:portal_usable_surface unless block ~ ~ ~-1 #portal:portal_usable_surface run tag @e[tag=this] add 6

execute if block ~ ~ ~ #portal:portal_usable_surface unless block ~1 ~-1 ~ #portal:raycast_pass unless block ~ ~-1 ~1 #portal:raycast_pass unless block ~-1 ~-1 ~ #portal:raycast_pass unless block ~ ~-1 ~-1 #portal:raycast_pass run tag @e[tag=this] add 6

execute unless entity @e[tag=this,tag=6] if block ~ ~ ~ #portal:portal_usable_surface unless block ~ ~-1 ~1 #portal:raycast_pass unless block ~ ~-1 ~-1 #portal:raycast_pass run tag @e[tag=this] add 6

execute unless block ~ ~-1 ~ #portal:raycast_pass run tag @e[tag=this] add 6

#================================================================

execute unless entity @e[tag=this,tag=6] if block ~ ~ ~ #portal:portal_usable_surface unless block ~ ~ ~1 #portal:portal_usable_surface unless block ~ ~-1 ~-1 #portal:raycast_pass run tag @e[tag=this] add 6

execute unless entity @e[tag=this,tag=6] if block ~ ~ ~ #portal:portal_usable_surface unless block ~ ~-1 ~1 #portal:raycast_pass unless block ~ ~ ~-1 #portal:portal_usable_surface run tag @e[tag=this] add 6

#================================================================

execute unless entity @e[tag=this,tag=6] if block ~ ~ ~ #portal:portal_usable_surface unless block ~0.5 ~ ~ #portal:portal_usable_surface unless block ~ ~ ~1 #portal:portal_usable_surface run tag @e[tag=this] add 1

execute unless entity @e[tag=this,tag=6] if block ~ ~ ~ #portal:portal_usable_surface unless block ~-0.5 ~ ~ #portal:portal_usable_surface unless block ~ ~ ~1 #portal:portal_usable_surface run tag @e[tag=this] add 1

execute unless entity @e[tag=this,tag=6] if block ~ ~ ~ #portal:portal_usable_surface unless block ~0.5 ~ ~ #portal:portal_usable_surface unless block ~ ~ ~-1 #portal:portal_usable_surface run tag @e[tag=this] add 2

execute unless entity @e[tag=this,tag=6] if block ~ ~ ~ #portal:portal_usable_surface unless block ~-0.5 ~ ~ #portal:portal_usable_surface unless block ~ ~ ~-1 #portal:portal_usable_surface run tag @e[tag=this] add 2

execute unless entity @e[tag=this,tag=6] if block ~ ~ ~ #portal:portal_usable_surface unless block ~0.5 ~-1 ~ #portal:raycast_pass unless block ~ ~-1 ~1 #portal:raycast_pass run tag @e[tag=this] add 1

execute unless entity @e[tag=this,tag=6] if block ~ ~ ~ #portal:portal_usable_surface unless block ~-0.5 ~-1 ~ #portal:raycast_pass unless block ~ ~-1 ~1 #portal:raycast_pass run tag @e[tag=this] add 1

execute unless entity @e[tag=this,tag=6] if block ~ ~ ~ #portal:portal_usable_surface unless block ~0.5 ~-1 ~ #portal:raycast_pass unless block ~ ~-1 ~-1 #portal:raycast_pass run tag @e[tag=this] add 2

execute unless entity @e[tag=this,tag=6] if block ~ ~ ~ #portal:portal_usable_surface unless block ~-0.5 ~-1 ~ #portal:raycast_pass unless block ~ ~-1 ~-1 #portal:raycast_pass run tag @e[tag=this] add 2

#================================================================

execute unless entity @e[tag=this,tag=6] if block ~ ~ ~ #portal:portal_usable_surface unless block ~0.5 ~ ~ #portal:portal_usable_surface unless block ~ ~-1 ~1 #portal:raycast_pass run tag @e[tag=this] add 1

execute unless entity @e[tag=this,tag=6] if block ~ ~ ~ #portal:portal_usable_surface unless block ~-0.5 ~ ~ #portal:portal_usable_surface unless block ~ ~-1 ~1 #portal:raycast_pass run tag @e[tag=this] add 1

execute unless entity @e[tag=this,tag=6] if block ~ ~ ~ #portal:portal_usable_surface unless block ~0.5 ~ ~ #portal:portal_usable_surface unless block ~ ~-1 ~-1 #portal:raycast_pass run tag @e[tag=this] add 2

execute unless entity @e[tag=this,tag=6] if block ~ ~ ~ #portal:portal_usable_surface unless block ~-0.5 ~ ~ #portal:portal_usable_surface unless block ~ ~-1 ~-1 #portal:raycast_pass run tag @e[tag=this] add 2

execute unless entity @e[tag=this,tag=6] if block ~ ~ ~ #portal:portal_usable_surface unless block ~0.5 ~-1 ~ #portal:raycast_pass unless block ~ ~ ~1 #portal:portal_usable_surface run tag @e[tag=this] add 1

execute unless entity @e[tag=this,tag=6] if block ~ ~ ~ #portal:portal_usable_surface unless block ~-0.5 ~-1 ~ #portal:raycast_pass unless block ~ ~ ~1 #portal:portal_usable_surface run tag @e[tag=this] add 1

execute unless entity @e[tag=this,tag=6] if block ~ ~ ~ #portal:portal_usable_surface unless block ~0.5 ~-1 ~ #portal:raycast_pass unless block ~ ~ ~-1 #portal:portal_usable_surface run tag @e[tag=this] add 2

execute unless entity @e[tag=this,tag=6] if block ~ ~ ~ #portal:portal_usable_surface unless block ~-0.5 ~-1 ~ #portal:raycast_pass unless block ~ ~ ~-1 #portal:portal_usable_surface run tag @e[tag=this] add 2

#================================================================С_ЭТОГО_МОМЕНТА

execute unless entity @e[tag=this,tag=6] unless entity @e[tag=this,tag=1] if block ~ ~ ~ #portal:portal_usable_surface unless block ~ ~ ~1 #portal:portal_usable_surface unless block ~0.5 ~ ~-1 #portal:portal_usable_surface run tag @e[tag=this] add 1

execute unless entity @e[tag=this,tag=6] unless entity @e[tag=this,tag=1] if block ~ ~ ~ #portal:portal_usable_surface unless block ~ ~ ~1 #portal:portal_usable_surface unless block ~-0.5 ~ ~-1 #portal:portal_usable_surface run tag @e[tag=this] add 1

execute unless entity @e[tag=this,tag=6] unless entity @e[tag=this,tag=2] if block ~ ~ ~ #portal:portal_usable_surface unless block ~ ~ ~-1 #portal:portal_usable_surface unless block ~0.5 ~ ~1 #portal:portal_usable_surface run tag @e[tag=this] add 2

execute unless entity @e[tag=this,tag=6] unless entity @e[tag=this,tag=2] if block ~ ~ ~ #portal:portal_usable_surface unless block ~ ~ ~-1 #portal:portal_usable_surface unless block ~-0.5 ~ ~1 #portal:portal_usable_surface run tag @e[tag=this] add 2

execute unless entity @e[tag=this,tag=6] unless entity @e[tag=this,tag=1] if block ~ ~ ~ #portal:portal_usable_surface unless block ~ ~ ~1 #portal:portal_usable_surface unless block ~0.5 ~-1 ~-1 #portal:raycast_pass run tag @e[tag=this] add 1

execute unless entity @e[tag=this,tag=6] unless entity @e[tag=this,tag=1] if block ~ ~ ~ #portal:portal_usable_surface unless block ~ ~ ~1 #portal:portal_usable_surface unless block ~-0.5 ~-1 ~-1 #portal:raycast_pass run tag @e[tag=this] add 1

execute unless entity @e[tag=this,tag=6] unless entity @e[tag=this,tag=2] if block ~ ~ ~ #portal:portal_usable_surface unless block ~ ~ ~-1 #portal:portal_usable_surface unless block ~0.5 ~-1 ~1 #portal:raycast_pass run tag @e[tag=this] add 2

execute unless entity @e[tag=this,tag=6] unless entity @e[tag=this,tag=2] if block ~ ~ ~ #portal:portal_usable_surface unless block ~ ~ ~-1 #portal:portal_usable_surface unless block ~-0.5 ~-1 ~1 #portal:raycast_pass run tag @e[tag=this] add 2

#================================================================

execute unless entity @e[tag=this,tag=6] unless entity @e[tag=this,tag=1] if block ~ ~ ~ #portal:portal_usable_surface unless block ~ ~-1 ~1 #portal:raycast_pass unless block ~0.5 ~ ~-1 #portal:portal_usable_surface run tag @e[tag=this] add 1

execute unless entity @e[tag=this,tag=6] unless entity @e[tag=this,tag=1] if block ~ ~ ~ #portal:portal_usable_surface unless block ~ ~-1 ~1 #portal:raycast_pass unless block ~-0.5 ~ ~-1 #portal:portal_usable_surface run tag @e[tag=this] add 1

execute unless entity @e[tag=this,tag=6] unless entity @e[tag=this,tag=2] if block ~ ~ ~ #portal:portal_usable_surface unless block ~ ~-1 ~-1 #portal:raycast_pass unless block ~0.5 ~ ~1 #portal:portal_usable_surface run tag @e[tag=this] add 2

execute unless entity @e[tag=this,tag=6] unless entity @e[tag=this,tag=2] if block ~ ~ ~ #portal:portal_usable_surface unless block ~ ~-1 ~-1 #portal:raycast_pass unless block ~-0.5 ~ ~1 #portal:portal_usable_surface run tag @e[tag=this] add 2

execute unless entity @e[tag=this,tag=6] unless entity @e[tag=this,tag=1] if block ~ ~ ~ #portal:portal_usable_surface unless block ~ ~-1 ~1 #portal:raycast_pass unless block ~0.5 ~-1 ~-1 #portal:raycast_pass run tag @e[tag=this] add 1

execute unless entity @e[tag=this,tag=6] unless entity @e[tag=this,tag=1] if block ~ ~ ~ #portal:portal_usable_surface unless block ~ ~-1 ~1 #portal:raycast_pass unless block ~-0.5 ~-1 ~-1 #portal:raycast_pass run tag @e[tag=this] add 1

execute unless entity @e[tag=this,tag=6] unless entity @e[tag=this,tag=2] if block ~ ~ ~ #portal:portal_usable_surface unless block ~ ~-1 ~-1 #portal:raycast_pass unless block ~0.5 ~-1 ~1 #portal:raycast_pass run tag @e[tag=this] add 2

execute unless entity @e[tag=this,tag=6] unless entity @e[tag=this,tag=2] if block ~ ~ ~ #portal:portal_usable_surface unless block ~ ~-1 ~-1 #portal:raycast_pass unless block ~-0.5 ~-1 ~1 #portal:raycast_pass run tag @e[tag=this] add 2

#================================================================ДО_ЭТОГО

execute unless entity @e[tag=this,tag=6] unless entity @e[tag=this,tag=1] unless entity @e[tag=this,tag=2] if block ~ ~ ~ #portal:portal_usable_surface unless block ~0.5 ~ ~ #portal:portal_usable_surface run tag @e[tag=this] add 5

execute unless entity @e[tag=this,tag=6] unless entity @e[tag=this,tag=1] unless entity @e[tag=this,tag=2] if block ~ ~ ~ #portal:portal_usable_surface unless block ~-0.5 ~ ~ #portal:portal_usable_surface run tag @e[tag=this] add 5

execute unless entity @e[tag=this,tag=6] unless entity @e[tag=this,tag=1] if block ~ ~ ~ #portal:portal_usable_surface unless block ~ ~ ~1 #portal:portal_usable_surface run tag @e[tag=this] add 3

execute unless entity @e[tag=this,tag=6] unless entity @e[tag=this,tag=2] if block ~ ~ ~ #portal:portal_usable_surface unless block ~ ~ ~-1 #portal:portal_usable_surface run tag @e[tag=this] add 4

execute unless entity @e[tag=this,tag=6] unless entity @e[tag=this,tag=1] unless entity @e[tag=this,tag=2] if block ~ ~ ~ #portal:portal_usable_surface unless block ~0.5 ~-1 ~ #portal:raycast_pass run tag @e[tag=this] add 5

execute unless entity @e[tag=this,tag=6] unless entity @e[tag=this,tag=1] unless entity @e[tag=this,tag=2] if block ~ ~ ~ #portal:portal_usable_surface unless block ~-0.5 ~-1 ~ #portal:raycast_pass run tag @e[tag=this] add 5

execute unless entity @e[tag=this,tag=6] unless entity @e[tag=this,tag=1] if block ~ ~ ~ #portal:portal_usable_surface unless block ~ ~-1 ~1 #portal:raycast_pass run tag @e[tag=this] add 3

execute unless entity @e[tag=this,tag=6] unless entity @e[tag=this,tag=2] unless entity @e[tag=this,tag=3] if block ~ ~ ~ #portal:portal_usable_surface unless block ~ ~-1 ~-1 #portal:raycast_pass run tag @e[tag=this] add 4

#================================================================

execute unless entity @e[tag=this,tag=1] unless entity @e[tag=this,tag=2] unless entity @e[tag=this,tag=3] unless entity @e[tag=this,tag=4] unless entity @e[tag=this,tag=5] unless entity @e[tag=this,tag=6] if block ~ ~ ~ #portal:portal_usable_surface unless block ~0.5 ~ ~1 #portal:portal_usable_surface run tag @e[tag=this] add 5

execute unless entity @e[tag=this,tag=1] unless entity @e[tag=this,tag=2] unless entity @e[tag=this,tag=3] unless entity @e[tag=this,tag=4] unless entity @e[tag=this,tag=5] unless entity @e[tag=this,tag=6] if block ~ ~ ~ #portal:portal_usable_surface unless block ~-0.5 ~ ~1 #portal:portal_usable_surface run tag @e[tag=this] add 5

execute unless entity @e[tag=this,tag=1] unless entity @e[tag=this,tag=2] unless entity @e[tag=this,tag=3] unless entity @e[tag=this,tag=4] unless entity @e[tag=this,tag=5] unless entity @e[tag=this,tag=6] if block ~ ~ ~ #portal:portal_usable_surface unless block ~0.5 ~ ~-1 #portal:portal_usable_surface run tag @e[tag=this] add 5

execute unless entity @e[tag=this,tag=1] unless entity @e[tag=this,tag=2] unless entity @e[tag=this,tag=3] unless entity @e[tag=this,tag=4] unless entity @e[tag=this,tag=5] unless entity @e[tag=this,tag=6] if block ~ ~ ~ #portal:portal_usable_surface unless block ~-0.5 ~ ~-1 #portal:portal_usable_surface run tag @e[tag=this] add 5

execute unless entity @e[tag=this,tag=1] unless entity @e[tag=this,tag=2] unless entity @e[tag=this,tag=3] unless entity @e[tag=this,tag=4] unless entity @e[tag=this,tag=5] unless entity @e[tag=this,tag=6] if block ~ ~ ~ #portal:portal_usable_surface unless block ~0.5 ~-1 ~1 #portal:raycast_pass run tag @e[tag=this] add 5

execute unless entity @e[tag=this,tag=1] unless entity @e[tag=this,tag=2] unless entity @e[tag=this,tag=3] unless entity @e[tag=this,tag=4] unless entity @e[tag=this,tag=5] unless entity @e[tag=this,tag=6] if block ~ ~ ~ #portal:portal_usable_surface unless block ~-0.5 ~-1 ~1 #portal:raycast_pass run tag @e[tag=this] add 5

execute unless entity @e[tag=this,tag=1] unless entity @e[tag=this,tag=2] unless entity @e[tag=this,tag=3] unless entity @e[tag=this,tag=4] unless entity @e[tag=this,tag=5] unless entity @e[tag=this,tag=6] if block ~ ~ ~ #portal:portal_usable_surface unless block ~0.5 ~-1 ~-1 #portal:raycast_pass run tag @e[tag=this] add 5

execute unless entity @e[tag=this,tag=1] unless entity @e[tag=this,tag=2] unless entity @e[tag=this,tag=3] unless entity @e[tag=this,tag=4] unless entity @e[tag=this,tag=5] unless entity @e[tag=this,tag=6] if block ~ ~ ~ #portal:portal_usable_surface unless block ~-0.5 ~-1 ~-1 #portal:raycast_pass run tag @e[tag=this] add 5

#================================================================

execute unless block ~ ~ ~ #portal:portal_usable_surface run tag @e[tag=this] add 6

execute unless entity @e[tag=this,tag=1] unless entity @e[tag=this,tag=2] unless entity @e[tag=this,tag=3] unless entity @e[tag=this,tag=4] unless entity @e[tag=this,tag=5] unless entity @e[tag=this,tag=6] run tag @e[tag=this] add 7

#================================================================

execute unless entity @e[tag=this,tag=6] run kill @e[tag=orange_portal]

#================================================================

execute unless block ~ ~ ~ #portal:portal_usable_surface run particle minecraft:item_slime ~ ~ ~ 0.1 0.1 0.1 100 100

#================================================================


execute as @e[tag=this,tag=1] align xyz positioned ~ ~ ~-1 run function portal_blue:orange/portal_down/south

execute as @e[tag=this,tag=2] align xyz run function portal_blue:orange/portal_down/south

execute as @e[tag=this,tag=3] align yz positioned ~ ~ ~-1 run function portal_blue:orange/portal_down/south

execute as @e[tag=this,tag=4] align yz run function portal_blue:orange/portal_down/south

execute as @e[tag=this,tag=5] align xz run function portal_blue:orange/portal_down/south

execute as @e[tag=this,tag=7] align y run function portal_blue:orange/portal_down/south







#================================================================