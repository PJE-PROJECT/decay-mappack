

# Reset

advancement revoke @s only sbpg:right_click


# Change gun to colour, bob effect
execute store result entity @s SelectedItem.components."minecraft:custom_data".DummyChange int 1 run time query gametime

execute if score @s portalgun_anim_time matches 0 unless score pguncol config matches 1 run function portalgun_anims:portalgunshoot
execute if score @s portalgun_anim_time matches 0 unless score pguncol config matches 1 run function portal:mp5_fire

