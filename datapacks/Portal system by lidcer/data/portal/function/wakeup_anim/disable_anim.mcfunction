scoreboard players set @s time 0
scoreboard players set @s idle_time 0
gamerule sendCommandFeedback false
gamemode adventure @a[limit=1]
gamerule sendCommandFeedback true
kill @s
scoreboard players set wakeup_anim buffer 0