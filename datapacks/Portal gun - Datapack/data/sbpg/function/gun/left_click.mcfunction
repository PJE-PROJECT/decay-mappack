
# Reset

advancement revoke @s only sbpg:left_click


# Change gun to colour, bob effect
execute store result entity @s SelectedItem.components."minecraft:custom_data".DummyChange int 1 run time query gametime

execute if score @s portalgun_anim_time matches 0 unless score pguncol config matches 2 run function portalgun_anims:portalgunshoot
execute if score @s portalgun_anim_time matches 0 unless score pguncol config matches 2 run function portal_blue:mp5_fire
