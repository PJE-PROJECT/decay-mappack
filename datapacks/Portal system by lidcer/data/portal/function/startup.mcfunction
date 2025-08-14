scoreboard objectives add portalgun minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add animationtime dummy
scoreboard objectives add velocity dummy
scoreboard objectives add math dummy
scoreboard objectives add config dummy
scoreboard objectives add shift minecraft.custom:minecraft.sneak_time
scoreboard objectives add shiftedit minecraft.custom:minecraft.sneak_time
scoreboard players add @a shiftedit 0
scoreboard players add @a shift 0
scoreboard objectives add ID dummy
execute unless score Crosshair config matches 0..3 run scoreboard players set Crosshair config 2
execute unless score Align config matches 0..2 run scoreboard players set Align config 1
execute unless score Ghosting config matches 0..3 run scoreboard players set Ghosting config 0
execute unless score Sound config matches 0..2 run scoreboard players set Sound config 2
execute unless score Idle config matches 0..2 run scoreboard players set Idle config 0
execute unless score Dynamicteleport config matches 0..2 run scoreboard players set Dynamicteleport config 0
execute unless score Mapmaker config matches 0..2 run scoreboard players set Mapmaker config 0
execute unless score survival_crafting config matches 0..2 run scoreboard players set survival_crafting config 1
execute unless score shift_stop config matches 0..2 run scoreboard players set shift_stop config 1
tellraw @a ["",{"text":"Loaded PortalSystem Beta v0.1.3 by ","type":"text"},{"text":"Lidcer","color":"blue","type":"text"}]

function portal:blackbox