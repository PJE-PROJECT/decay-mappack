scoreboard players add @s[tag=portalgun_anim_draw] portalgun_anim_time 1
scoreboard players add @s[tag=portalgun_anim_shoot] portalgun_anim_time 1
scoreboard players add @s[tag=portalgun_anim_pick] portalgun_anim_time 1
scoreboard players add @s[tag=portalgun_anim_pickoff] portalgun_anim_time 1
scoreboard players add @s[tag=portalgun_anim_dryfire] portalgun_anim_time 1

#execute if entity @s[tag=portalgun_anim_draw,scores={portalgun_anim_time=30..}] run say 1
#execute if entity @s[tag=portalgun_anim_draw,scores={portalgun_anim_time=30..}] run data modify storage minecraft:cmd value set value 15
#item modify entity @s[tag=portalgun_anim_draw,scores={portalgun_anim_time=30..}] weapon.offhand portalgun_anims:model

#item replace entity @s[tag=portalgun_anim_shoot,scores={portalgun_anim_time=12..}] weapon.offhand with minecraft:leather_helmet{CustomModelData:3,display:{color:8388641},portalgunmodel:1b}
#item replace entity @s[tag=portalgun_anim_pick,scores={portalgun_anim_time=16..}] weapon.offhand with minecraft:leather_helmet{CustomModelData:2,display:{color:838808001},portalgunmodel:1b}
#item replace entity @s[tag=portalgun_anim_pickoff,tag=!portalgun_anim_dryfire,scores={portalgun_anim_time=16..}] weapon.offhand with minecraft:leather_helmet{CustomModelData:3,display:{color:8388641},portalgunmodel:1b}
#item replace entity @s[tag=portalgun_anim_dryfire,scores={portalgun_anim_time=15..}] weapon.offhand with minecraft:leather_helmet{CustomModelData:3,display:{color:8388641},portalgunmodel:1b}


item replace entity @s[tag=portalgun_anim_draw,scores={portalgun_anim_time=30..}] weapon.offhand with minecraft:leather_helmet[minecraft:custom_model_data=15,minecraft:custom_name='""',minecraft:dyed_color={rgb:8388641},minecraft:custom_data={portalgunmodel:1b}]
item replace entity @s[tag=portalgun_anim_shoot,scores={portalgun_anim_time=15..}] weapon.offhand with minecraft:leather_helmet[minecraft:custom_model_data=15,minecraft:custom_name='""',minecraft:dyed_color={rgb:8388641},minecraft:custom_data={portalgunmodel:1b}]
item replace entity @s[tag=portalgun_anim_pick,scores={portalgun_anim_time=16..}] weapon.offhand with minecraft:leather_helmet[minecraft:custom_model_data=2,minecraft:custom_name='""',minecraft:dyed_color={rgb:838808001},minecraft:custom_data={portalgunmodel:1b}]
item replace entity @s[tag=portalgun_anim_pickoff,tag=!portalgun_anim_dryfire,scores={portalgun_anim_time=16..}] weapon.offhand with minecraft:leather_helmet[minecraft:custom_model_data=15,minecraft:dyed_color={rgb:8388641},minecraft:custom_data={Name:'[""]',portalgunmodel:1b}]
item replace entity @s[tag=portalgun_anim_dryfire,scores={portalgun_anim_time=15..}] weapon.offhand with minecraft:leather_helmet[minecraft:custom_model_data=15,minecraft:custom_name='""',minecraft:dyed_color={rgb:8388641},minecraft:custom_data={portalgunmodel:1b}]


#item replace entity @s[scores={portalgun_anim_time=3..}] weapon.mainhand with minecraft:carrot_on_a_stick{Unbreakable:1b,CustomModelData:3,Tags:["itempicker"],mp5:1,mp6:1,display:{Name:'[""]'}}
#item replace entity @s[scores={portalgun_anim_time=3..},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3,Tags:["itempicker"]}}}] weapon.mainhand with minecraft:carrot_on_a_stick{Unbreakable:1b,CustomModelData:3,Tags:["itempicker"],display:{Name:'[""]'}}
#item replace entity @s[scores={portalgun_anim_time=3..},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["itempicker","lightning"]}}}] weapon.mainhand with minecraft:carrot_on_a_stick{Unbreakable:1b,CustomModelData:3,Tags:["itempicker"],display:{Name:'[""]'}}



tag @s[tag=portalgun_anim_draw,scores={portalgun_anim_time=30..}] remove portalgun_anim_draw
tag @s[tag=portalgun_anim_shoot,scores={portalgun_anim_time=15..}] remove portalgun_anim_shoot
tag @s[tag=portalgun_anim_pick,scores={portalgun_anim_time=16..}] remove portalgun_anim_pick
tag @s[tag=portalgun_anim_pickoff,tag=!portalgun_anim_dryfire,scores={portalgun_anim_time=16..}] remove portalgun_anim_pickoff
tag @s[tag=portalgun_anim_dryfire,scores={portalgun_anim_time=15..}] remove portalgun_anim_dryfire

scoreboard players set @e[tag=test_subject,tag=!portalgun_anim_draw,tag=!portalgun_anim_shoot,tag=!portalgun_anim_pick,tag=!portalgun_anim_pickoff,tag=!portalgun_anim_dryfire,scores={portalgun_anim_time=1..}] portalgun_anim_time 0

tag @s[scores={portalgun_anim_time=0}] remove portalgun_anim
