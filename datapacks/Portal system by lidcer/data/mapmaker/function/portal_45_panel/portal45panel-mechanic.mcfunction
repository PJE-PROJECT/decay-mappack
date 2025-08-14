#Collusion

#North panel
execute at @e[tag=45_panel,tag=S,tag=!useless] run setblock ~ ~1 ~ minecraft:dark_oak_stairs
execute at @e[tag=45_panel,tag=S,tag=!useless] run setblock ~-1 ~1 ~ minecraft:dark_oak_stairs
execute at @e[tag=45_panel,tag=S,tag=!useless] run setblock ~ ~2 ~-1 minecraft:dark_oak_stairs
execute at @e[tag=45_panel,tag=S,tag=!useless] run setblock ~-1 ~2 ~-1 minecraft:dark_oak_stairs
execute at @e[tag=45_panel,tag=S,tag=!useless] run setblock ~ ~1 ~-1 minecraft:iron_trapdoor[half=top]
execute at @e[tag=45_panel,tag=S,tag=!useless] run setblock ~-1 ~1 ~-1 minecraft:iron_trapdoor[half=top]

#South panel
execute at @e[tag=45_panel,tag=N,tag=!useless] run setblock ~ ~1 ~ minecraft:dark_oak_stairs[facing=south]
execute at @e[tag=45_panel,tag=N,tag=!useless] run setblock ~-1 ~1 ~ minecraft:dark_oak_stairs[facing=south]
execute at @e[tag=45_panel,tag=N,tag=!useless] run setblock ~ ~2 ~1 minecraft:dark_oak_stairs[facing=south]
execute at @e[tag=45_panel,tag=N,tag=!useless] run setblock ~-1 ~2 ~1 minecraft:dark_oak_stairs[facing=south]
execute at @e[tag=45_panel,tag=N,tag=!useless] run setblock ~ ~1 ~1 minecraft:iron_trapdoor[half=top]
execute at @e[tag=45_panel,tag=N,tag=!useless] run setblock ~-1 ~1 ~1 minecraft:iron_trapdoor[half=top]

#East panel
execute at @e[tag=45_panel,tag=W,tag=!useless] run setblock ~ ~1 ~ minecraft:dark_oak_stairs[facing=east]
execute at @e[tag=45_panel,tag=W,tag=!useless] run setblock ~ ~1 ~-1 minecraft:dark_oak_stairs[facing=east]
execute at @e[tag=45_panel,tag=W,tag=!useless] run setblock ~1 ~2 ~ minecraft:dark_oak_stairs[facing=east]
execute at @e[tag=45_panel,tag=W,tag=!useless] run setblock ~1 ~2 ~-1 minecraft:dark_oak_stairs[facing=east]
execute at @e[tag=45_panel,tag=W,tag=!useless] run setblock ~1 ~1 ~ minecraft:iron_trapdoor[half=top]
execute at @e[tag=45_panel,tag=W,tag=!useless] run setblock ~1 ~1 ~-1 minecraft:iron_trapdoor[half=top]

#West panel
execute at @e[tag=45_panel,tag=E,tag=!useless] run setblock ~ ~1 ~ minecraft:dark_oak_stairs[facing=west]
execute at @e[tag=45_panel,tag=E,tag=!useless] run setblock ~ ~1 ~-1 minecraft:dark_oak_stairs[facing=west]
execute at @e[tag=45_panel,tag=E,tag=!useless] run setblock ~-1 ~2 ~ minecraft:dark_oak_stairs[facing=west]
execute at @e[tag=45_panel,tag=E,tag=!useless] run setblock ~-1 ~2 ~-1 minecraft:dark_oak_stairs[facing=west]
execute at @e[tag=45_panel,tag=E,tag=!useless] run setblock ~-1 ~1 ~ minecraft:iron_trapdoor[half=top]
execute at @e[tag=45_panel,tag=E,tag=!useless] run setblock ~-1 ~1 ~-1 minecraft:iron_trapdoor[half=top]