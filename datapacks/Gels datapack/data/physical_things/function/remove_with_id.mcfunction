#execute align xyz run summon falling_block ~0.5 ~ ~0.5 {BlockState:{Name:"glass"},Glowing:1b,DropItem:0b,NoGravity:1b,Time:280}

execute align xyz positioned ~0.5 ~0.5 ~0.5 run function physical_things:blob/blub



tag @s add select_blob
scoreboard players operation #id_test main_score = @s physical_things.id
kill @e[type=minecraft:armor_stand,distance=..1,tag=!select_blob,limit=1,predicate=physical_things:same_ids]
scoreboard players reset @s
kill @s[type=!minecraft:player]