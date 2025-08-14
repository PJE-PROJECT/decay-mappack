gamerule sendCommandFeedback false
gamemode spectator @a
gamerule sendCommandFeedback true
spectate @s @a[limit=1]
function portal:wakeup_anim/exit1 with storage portal:wakeup_pos
execute if entity @s[scores={time=50..}] run function portal:wakeup_anim/disable_anim
scoreboard players add @s[scores={idle_time=0..169}] idle_time 1
scoreboard players add @s[scores={idle_time=170}] time 1

scoreboard players add @s idle_time 0
scoreboard players add @s time 0