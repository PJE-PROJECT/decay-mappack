


#####
tag @e[type=minecraft:item_display,tag=laser_receptacle_glass,tag=active,tag=!useless] remove active
####


#CAMERA
execute if entity @a[tag=portalcam_1_setup,limit=1] run function mapmaker:portal_camera/portalcamera
execute if entity @a[tag=portalcam_2_setup,limit=1] run function mapmaker:portal_camera/portalcamera
execute as @e[type=item_display,distance=..40,tag=cam,tag=!destroyed] at @s run function mapmaker:portal_camera/portalcamera-mechanic

#CUBE
execute if entity @a[tag=cube_setup,limit=1] run function mapmaker:portal_cube/cube
execute as @e[type=minecraft:armor_stand,distance=..40,tag=cube] at @s run function mapmaker:portal_cube/cube-mechanic

#PORTAL SPAWNER
execute if entity @a[tag=spawner_setup,limit=1] run function mapmaker:portal_spawner/spawner
execute as @e[type=minecraft:item_display,distance=..40,tag=portal_spawner_emitter,tag=!useless] at @s run function mapmaker:portal_spawner/spawner-mechanic

#FIZZLER
execute if entity @a[tag=material_emancipation_grill_1_setup,limit=1] run function mapmaker:portal_material_emacipation_grill/materialemancipationgrill
execute if entity @a[tag=material_emancipation_grill_2_setup,limit=1] run function mapmaker:portal_material_emacipation_grill/materialemancipationgrill
execute as @e[type=minecraft:armor_stand,distance=..40,tag=material_emancipation_grill_door,sort=random] at @s run function mapmaker:portal_material_emacipation_grill/materialemancipationgrill-mechanic


# LASER FIELD
execute if entity @a[tag=laser_field_setup,limit=1] run function mapmaker:portal_laser_field/laser_field
execute as @e[type=minecraft:armor_stand,distance=..40,tag=laser_field_door,sort=random] at @s run function mapmaker:portal_laser_field/mechanic


# DEATH FIELD
execute if entity @a[tag=death_field_setup,limit=1] run function mapmaker:portal_death_field/death_field
execute as @e[type=minecraft:armor_stand,distance=..40,tag=death_field_door,sort=random] at @s run function mapmaker:portal_death_field/mechanic



#ELEVATOR
execute if entity @a[tag=elevator_setup,limit=1] run function mapmaker:portal_elevator/elevator

#LASER EMITTER
execute if entity @a[tag=laser_emitter_c_setup,limit=1] run function mapmaker:portal_laser_emitter/laser_emitter
execute if entity @a[tag=laser_emitter_r_setup,limit=1] run function mapmaker:portal_laser_emitter/laser_emitter
execute as @e[type=minecraft:item_display,distance=..40,tag=laser_emitter,tag=!useless] at @s run function mapmaker:portal_laser_emitter/laser_emitter-mechanic

#LASER CATCHER
execute if entity @a[tag=laser_catcher_setup,limit=1] run function mapmaker:portal_laser_catcher/laser_catcher
execute as @e[distance=..40,tag=laser_catcher,tag=!useless] at @s run function mapmaker:portal_laser_catcher/laser_catcher-mechanic

#45 DEGREES PANEL
execute if entity @a[tag=45_panel_setup,limit=1] run function mapmaker:portal_45_panel/portal45panel
execute if entity @e[type=minecraft:armor_stand,distance=..40,tag=45_panel] run function mapmaker:portal_45_panel/portal45panel-mechanic

#DOOR
execute if entity @a[tag=portaldoor_2_setup,limit=1] run function mapmaker:portal_door/portaldoor
execute as @e[type=minecraft:armor_stand,distance=..40,tag=pdoor,tag=!doorL,tag=!doorR,tag=!useless] at @s positioned ~ ~-1.5 ~ run function mapmaker:portal_door/pre

#CUBE BUTTON
execute if entity @a[tag=portalbutton_2_setup,limit=1] run function mapmaker:portal_heavy_super_button/portal_heavy_super_button
execute if entity @a[distance=..40,tag=portalbutton_2_setup_wrecked,limit=1] run function mapmaker:portal_heavy_super_button/portal_heavy_super_button
execute as @e[distance=..40,tag=portal_heavy_super_button_set_2] at @s run function mapmaker:portal_heavy_super_button/portal_heavy_super_button-mechanic

#CUBE DROPPER
execute if entity @a[tag=droper_2_setup,limit=1] run function mapmaker:portal_dropper/dropper
execute as @e[type=minecraft:armor_stand,distance=..40,tag=2pcd,tag=!useless] at @s run function mapmaker:portal_dropper/dropper-mechanic

#VERICAL DOOR
execute if entity @a[tag=vertdoor_setup,limit=1] run function mapmaker:portal_vertdoor/vertdoor
execute as @e[type=minecraft:item_display,distance=..40,tag=vertdoor,tag=!broken,tag=!useless] at @s run function mapmaker:portal_vertdoor/vertdoor-mechanic
execute as @e[type=minecraft:item_display,distance=..40,tag=vertdoor,tag=broken,tag=!useless] at @s run function mapmaker:portal_vertdoor/vertdoor-mechanic_broken

#GEL DROPPER
execute if entity @a[tag=gel_dropper_setup,limit=1] run function mapmaker:portal_gel_dropper/dropper
execute as @e[type=minecraft:armor_stand,distance=..40,tag=gel_dropper,tag=!useless] at @s run function mapmaker:portal_gel_dropper/mechanic

#PEDESTAL BUTTON
execute if entity @a[tag=portalpedestal_button_setup,limit=1] run function mapmaker:portal_pedestal_button/pedestal_button
execute as @e[type=minecraft:armor_stand,distance=..40,tag=button_pedestal_base,tag=!useless,tag=!new] at @s run function mapmaker:portal_pedestal_button/pedestal_button-mechanic

#HARD LIGHT BRIDGE
execute if entity @a[tag=hard_light_bridge_setup,limit=1] run function mapmaker:portal_hard_light_bridge/hard_light_bridge
execute as @e[type=minecraft:item_display,distance=..40,tag=hard_light_bridge_emitter,tag=!useless] at @s run function mapmaker:portal_hard_light_bridge/hard_light_bridge-mechanic

#PORTAL GUN
execute if entity @a[tag=pgun_setup,limit=1] run function mapmaker:portal_pgun/pgun
#execute as @e[type=minecraft:item_display,distance=..2,tag=v_portalgun,tag=!picked] positioned as @s run function mapmaker:portal_pgun/pgun-mechanic


#ARM 64x64
execute if entity @a[tag=arm_setup,limit=1] run function mapmaker:portal_arm/arm
execute as @e[type=item_display,tag=arm64,distance=..40,tag=!useless] at @s run function mapmaker:portal_arm/mechanic


#EXSCURSION FUNNEL
execute if entity @a[tag=funnel_setup,limit=1] run function mapmaker:portal_funnel/funnel
execute as @e[type=item_display,tag=funnel_emitter,distance=..40,tag=!useless] at @s run function mapmaker:portal_funnel/mechanic


#FAITH PLATE
execute if entity @a[tag=plate_setup,limit=1] run function mapmaker:portal_faith_plate/faith_plate
execute if entity @a[tag=plate_setup_point,limit=1] run function mapmaker:portal_faith_plate/faith_plate_point
execute if entity @e[type=minecraft:armor_stand,tag=cube_display,limit=1] run function mapmaker:portal_faith_plate/faith_plate_point
execute as @e[type=minecraft:armor_stand,distance=..40,tag=plate_teh,tag=!useless] at @s run function mapmaker:portal_faith_plate/faith_plate-mechanic

#PLAYERSTART
execute if entity @a[tag=playerstart_setup,limit=1] run function mapmaker:portal_playerstart/playerstart
execute if score search map matches 0 positioned as @e[type=minecraft:interaction,distance=..5,tag=trigger_nextmap,limit=5] positioned ~-2 ~ ~-2 if entity @a[dx=3,dy=3,dz=3,tag=test_subject,tag=!loading_logo,tag=!b_pic,tag=!o_pic,tag=!blackscreen] run tag @a[limit=1] add blackscreen

#CUSTOM TRIGGERS
execute if entity @a[tag=trigger_setup,limit=1] run function mapmaker:portal_triggers/triggers
execute as @e[type=minecraft:interaction,distance=..5,tag=custom_trigger,tag=!activated] positioned as @s positioned ~-2 ~ ~-2 if entity @a[dx=3,dy=3,dz=3,tag=test_subject,tag=!loading_logo,tag=!b_pic,tag=!o_pic,tag=!blackscreen] run function triggers:check

#CMD VIEWER
execute if entity @a[tag=cmd_view,limit=1] run function mapmaker:cmd_view/cmd_view

#LIGHT
execute if entity @a[tag=light_setup,limit=1] run function mapmaker:light/wand

#LASER RECEPTACLE
execute if entity @a[tag=laser_receptacle_setup,limit=1] run function mapmaker:portal_laser_receptacle/laser_receptacle
execute as @e[type=minecraft:item_display,distance=..40,tag=laser_receptacle_glass,tag=!useless] at @s run function mapmaker:portal_laser_receptacle/laser_receptacle-mechanic


execute if entity @e[type=item_display,tag=playerstart,tag=!useless,distance=..350,limit=1] unless entity @e[tag=trigger_nextmap,tag=!useless,distance=..350,limit=1] unless entity @e[tag=elevator_main,tag=departure,distance=..350] run title @a[tag=!test_subject] actionbar {"text":"No Nexmap Trigger/Departure Elevator Detected!","color":"red"}



#some shitty settings
execute as @a[scores={portalgun=1..},limit=1,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}}] run function mapmaker:tagremove
scoreboard players set @a[scores={shiftedit=1..}] shiftedit 0
tag @a[tag=droper_2_setup_rusted,tag=!droper_2_setup] add droper_2_setup
tag @a[tag=droper_2_setup_clean_c,tag=!droper_2_setup] add droper_2_setup
tag @a[tag=droper_2_setup_clean_l,tag=!droper_2_setup] add droper_2_setup
tag @a[tag=droper_2_setup_rusted_l,tag=!droper_2_setup] add droper_2_setup
tag @a[tag=arm_setup_clean,tag=!arm_setup] add arm_setup
tag @a[tag=arm_setup_rusted,tag=!arm_setup] add arm_setup
tag @a[tag=arm_setup_empty,tag=!arm_setup] add arm_setup