scoreboard players add @s Distance 1
scoreboard players add @s meg_distance 1



#SPAWN FIELD ITEM DISPLAYS
#z
execute if entity @s[tag=S] run function mapmaker:portal_death_field/field_set_south
execute if entity @s[tag=N] run function mapmaker:portal_death_field/field_set_north

#x
execute if entity @s[tag=E] run function mapmaker:portal_death_field/field_set_east
execute if entity @s[tag=W] run function mapmaker:portal_death_field/field_set_west



execute if score @s meg_distance matches 16 run scoreboard players set @s meg_distance 0

execute unless block ^ ^ ^1 #mapmaker:meg_pass run function mapmaker:portal_death_field/raycast_end
execute unless block ^ ^1 ^ #mapmaker:meg_pass run function mapmaker:portal_death_field/raycast_end

execute if block ^ ^ ^1 #mapmaker:meg_pass if block ^ ^1 ^1 #mapmaker:meg_pass if entity @s[scores={Distance=..50}] positioned ^ ^ ^1 run function mapmaker:portal_death_field/raycast_loop