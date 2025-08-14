summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["orange.portal.check"]}

execute align xyz run summon minecraft:area_effect_cloud ~0.5 ~0.5 ~ {Tags:["north","ws"]}

execute align xyz run summon minecraft:area_effect_cloud ~ ~0.5 ~0.5 {Tags:["west","ws"]}

execute align xyz run summon minecraft:area_effect_cloud ~1 ~0.5 ~0.5 {Tags:["east","ws"]}

execute align xyz run summon minecraft:area_effect_cloud ~0.5 ~0.5 ~1 {Tags:["south","ws"]}

execute align xyz run summon minecraft:area_effect_cloud ~0.5 ~0 ~0.5 {Tags:["down","ws"]}

execute align xyz run summon minecraft:area_effect_cloud ~0.5 ~1 ~0.5 {Tags:["up","ws"]}

execute at @e[tag=orange.portal.check] run tag @e[tag=ws,sort=nearest,limit=1] add this

#=======================================================================

execute as @e[tag=this] if entity @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{mp5:1}}}}] if entity @e[distance=..2,tag=45_panel,tag=S] at @e[distance=..2,tag=45_panel,tag=S] positioned ~ ~0.9 ~-0.9 run function portal:orange/45/portal_south
execute as @e[tag=this] if entity @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{mp5:1}}}}] if entity @e[distance=..2,tag=45_panel,tag=N] at @e[distance=..2,tag=45_panel,tag=N] positioned ~ ~0.9 ~0.9 run function portal:orange/45/portal_north
execute as @e[tag=this] if entity @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{mp5:1}}}}] if entity @e[distance=..2,tag=45_panel,tag=E] at @e[distance=..2,tag=45_panel,tag=E] positioned ~-0.9 ~0.9 ~ run function portal:orange/45/portal_east
execute as @e[tag=this] if entity @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{mp5:1}}}}] if entity @e[distance=..2,tag=45_panel,tag=W] at @e[distance=..2,tag=45_panel,tag=W] positioned ~0.9 ~0.9 ~ run function portal:orange/45/portal_west



execute as @e[tag=north,tag=this] align z if entity @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{mp5:1}}}}] run function portal:orange/side_south

execute as @e[tag=west,tag=this] align x if entity @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{mp5:1}}}}] run function portal:orange/side_east

execute as @e[tag=east,tag=this] align x positioned ~0.9 ~ ~ if entity @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{mp5:1}}}}] run function portal:orange/side_west

execute as @e[tag=south,tag=this] align z positioned ~ ~ ~0.9 if entity @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{mp5:1}}}}] run function portal:orange/side_north

execute as @e[tag=down,tag=this] align y as @a[y_rotation=45..135,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{mp5:1}}}}] run function portal:orange/down_west

execute as @e[tag=down,tag=this] align y as @a[tag=E,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{mp5:1}}}}] run function portal:orange/down_east

execute as @e[tag=down,tag=this] align y as @a[y_rotation=-45..45,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{mp5:1}}}}] run function portal:orange/down_south

execute as @e[tag=down,tag=this] align y as @a[tag=N,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{mp5:1}}}}] run function portal:orange/down_north

execute as @e[tag=up,tag=this] align y as @a[y_rotation=-135..-45,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{mp5:1}}}}] run function portal:orange/up_east

execute as @e[tag=up,tag=this] align y as @a[y_rotation=45..135,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{mp5:1}}}}] run function portal:orange/up_west

execute as @e[tag=up,tag=this] align y as @a[y_rotation=-45..45,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{mp5:1}}}}] run function portal:orange/up_south

execute as @e[tag=up,tag=this] align y as @a[y_rotation=135..-135,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{mp5:1}}}}] run function portal:orange/up_north