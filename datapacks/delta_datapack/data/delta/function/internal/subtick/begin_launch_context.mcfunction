#> delta:internal/subtick/begin_launch_context
#   Sets up the bat and aec used to trigger the player_hurt_entity advancement right before an explosion

summon minecraft:area_effect_cloud ~ ~10000 ~ {Duration:1,Radius:0.0f,ReapplicationDelay:-1,Age:-1,WaitTime:0,Tags:["delta.init.aec"],potion_contents:{custom_effects:[{id:"minecraft:instant_damage",duration:1}]}}
summon minecraft:bat ~ ~10000 ~ {DeathLootTable:"",NoAI:1b,Health:1.0f,Tags:["delta.pre_explosion"],PersistenceRequired:1b}
function delta:internal/subtick/get_player_uuid
execute positioned ~ ~10000 ~ as @e[type=minecraft:area_effect_cloud,distance=..0.01,tag=delta.init.aec] run function delta:internal/subtick/aec_setup