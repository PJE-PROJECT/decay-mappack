scoreboard players operation id workspace = @a[tag=test_subject,limit=1] sbpg.player_id
execute at @s as @a if score @s sbpg.player_id = id workspace run tp @s[nbt={abilities:{flying:0b}}] ~ ~0.1 ~ ~ ~
execute at @s as @a if score @s sbpg.player_id = id workspace run tp @s[nbt={abilities:{flying:1b}}] ~ ~ ~ ~ ~
execute at @s as @a if score @s sbpg.player_id = id workspace run tag @s remove sbpg.dont_store_pos

# execute store result score rx workspace run data get entity @p Rotation[1] 10
# tellraw @a ["after recall:", {"score":{"name":"rx","objective":"workspace"}}]

kill @s