
clear @a[gamemode=creative,tag=arm_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}]

tellraw @a[gamemode=creative,tag=arm_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]


give @a[gamemode=creative,tag=arm_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["1","arm_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"32"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["1","arm_tool"]}]
give @a[gamemode=creative,tag=arm_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["2","arm_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"64"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["2","arm_tool"]}]
give @a[gamemode=creative,tag=arm_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["3","arm_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"128"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["3","arm_tool"]}]
give @a[gamemode=creative,tag=!arm_setup_empty,tag=arm_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["4","arm_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"90 deg"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["4","arm_tool"]}]
give @a[gamemode=creative,tag=!arm_setup_empty,tag=arm_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["5","arm_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"1 Ramp Stair"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["5","arm_tool"]}]
give @a[gamemode=creative,tag=!arm_setup_empty,tag=arm_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["6","arm_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"2 Ramp Stair"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["6","arm_tool"]}]
give @a[gamemode=creative,tag=!arm_setup_empty,tag=arm_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["7","arm_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"3 Ramp Stair"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["7","arm_tool"]}]
give @a[gamemode=creative,tag=!arm_setup_empty,tag=arm_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["8","arm_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=2,minecraft:custom_name='"4 Ramp Stair"',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["8","arm_tool"]}]



give @a[gamemode=creative,tag=arm_setup,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["exit_tool"]}}}]}] minecraft:carrot_on_a_stick[minecraft:custom_model_data=1,minecraft:custom_name='{"color":"black","text":"Aperture Science Universal Editor - Exit"}',minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},minecraft:custom_data={Tags:["exit_tool","menu3"]}]


#EMPTY
execute as @a[tag=arm_setup_empty,tag=arm_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["1"]}}}}] at @s unless entity @e[tag=arm64,tag=useless,tag=32] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:potion",components:{"minecraft:custom_model_data":44,"minecraft:potion_contents":{custom_color:0}},count:1},Tags:["arm64","32","empty","useless"],teleport_duration:1}
execute as @a[tag=arm_setup_empty,tag=arm_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["2"]}}}}] at @s unless entity @e[tag=arm64,tag=useless,tag=64] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:potion",components:{"minecraft:custom_model_data":50,"minecraft:potion_contents":{custom_color:0}},count:1},Tags:["arm64","64","empty","useless"],teleport_duration:1}
execute as @a[tag=arm_setup_empty,tag=arm_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["3"]}}}}] at @s unless entity @e[tag=arm64,tag=useless,tag=128] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:potion",components:{"minecraft:custom_model_data":56,"minecraft:potion_contents":{custom_color:0}},count:1},Tags:["arm64","128","empty","useless"],teleport_duration:1}
#CLEAN
execute as @a[tag=arm_setup_clean,tag=arm_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["1"]}}}}] at @s unless entity @e[tag=arm64,tag=useless,tag=32] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:potion",components:{"minecraft:custom_model_data":46,"minecraft:potion_contents":{custom_color:0}},count:1},Tags:["arm64","32","clean","useless"],teleport_duration:1}
execute as @a[tag=arm_setup_clean,tag=arm_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["2"]}}}}] at @s unless entity @e[tag=arm64,tag=useless,tag=64] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:potion",components:{"minecraft:custom_model_data":52,"minecraft:potion_contents":{custom_color:0}},count:1},Tags:["arm64","64","clean","useless"],teleport_duration:1}
execute as @a[tag=arm_setup_clean,tag=arm_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["3"]}}}}] at @s unless entity @e[tag=arm64,tag=useless,tag=128] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:potion",components:{"minecraft:custom_model_data":58,"minecraft:potion_contents":{custom_color:0}},count:1},Tags:["arm64","128","clean","useless"],teleport_duration:1}
execute as @a[tag=arm_setup_clean,tag=arm_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["4"]}}}}] at @s unless entity @e[tag=arm64,tag=useless,tag=90deg] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:potion",components:{"minecraft:custom_model_data":62,"minecraft:potion_contents":{custom_color:0}},count:1},Tags:["arm64","90deg","clean","useless"],teleport_duration:1}
execute as @a[tag=arm_setup_clean,tag=arm_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["5"]}}}}] at @s unless entity @e[tag=arm64,tag=useless,tag=rampa_stair1] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:potion",components:{"minecraft:custom_model_data":66,"minecraft:potion_contents":{custom_color:0}},count:1},Tags:["arm64","rampa_stair1","clean","useless"],teleport_duration:1}
execute as @a[tag=arm_setup_clean,tag=arm_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["6"]}}}}] at @s unless entity @e[tag=arm64,tag=useless,tag=rampa_stair2] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:potion",components:{"minecraft:custom_model_data":68,"minecraft:potion_contents":{custom_color:0}},count:1},Tags:["arm64","rampa_stair2","clean","useless"],teleport_duration:1}
execute as @a[tag=arm_setup_clean,tag=arm_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["7"]}}}}] at @s unless entity @e[tag=arm64,tag=useless,tag=rampa_stair3] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:potion",components:{"minecraft:custom_model_data":70,"minecraft:potion_contents":{custom_color:0}},count:1},Tags:["arm64","rampa_stair3","clean","useless"],teleport_duration:1}
execute as @a[tag=arm_setup_clean,tag=arm_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["8"]}}}}] at @s unless entity @e[tag=arm64,tag=useless,tag=rampa_stair4] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:potion",components:{"minecraft:custom_model_data":72,"minecraft:potion_contents":{custom_color:0}},count:1},Tags:["arm64","rampa_stair4","clean","useless"],teleport_duration:1}


#RUSTED

execute as @a[tag=arm_setup_rusted,tag=arm_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["1"]}}}}] at @s unless entity @e[tag=arm64,tag=useless,tag=32] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:potion",components:{"minecraft:custom_model_data":48,"minecraft:potion_contents":{custom_color:0}},count:1},Tags:["arm64","32","rusted","useless"],teleport_duration:1}
execute as @a[tag=arm_setup_rusted,tag=arm_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["2"]}}}}] at @s unless entity @e[tag=arm64,tag=useless,tag=64] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:potion",components:{"minecraft:custom_model_data":54,"minecraft:potion_contents":{custom_color:0}},count:1},Tags:["arm64","64","rusted","useless"],teleport_duration:1}
execute as @a[tag=arm_setup_rusted,tag=arm_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["3"]}}}}] at @s unless entity @e[tag=arm64,tag=useless,tag=128] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:potion",components:{"minecraft:custom_model_data":60,"minecraft:potion_contents":{custom_color:0}},count:1},Tags:["arm64","128","rusted","useless"],teleport_duration:1}
execute as @a[tag=arm_setup_rusted,tag=arm_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["4"]}}}}] at @s unless entity @e[tag=arm64,tag=useless,tag=90deg] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:potion",components:{"minecraft:custom_model_data":64,"minecraft:potion_contents":{custom_color:0}},count:1},Tags:["arm64","90deg","rusted","useless"],teleport_duration:1}
execute as @a[tag=arm_setup_rusted,tag=arm_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["5"]}}}}] at @s unless entity @e[tag=arm64,tag=useless,tag=rampa_stair1] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:potion",components:{"minecraft:custom_model_data":74,"minecraft:potion_contents":{custom_color:0}},count:1},Tags:["arm64","rampa_stair1","rusted","useless"],teleport_duration:1}
execute as @a[tag=arm_setup_rusted,tag=arm_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["6"]}}}}] at @s unless entity @e[tag=arm64,tag=useless,tag=rampa_stair2] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:potion",components:{"minecraft:custom_model_data":76,"minecraft:potion_contents":{custom_color:0}},count:1},Tags:["arm64","rampa_stair2","rusted","useless"],teleport_duration:1}
execute as @a[tag=arm_setup_rusted,tag=arm_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["7"]}}}}] at @s unless entity @e[tag=arm64,tag=useless,tag=rampa_stair3] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:potion",components:{"minecraft:custom_model_data":78,"minecraft:potion_contents":{custom_color:0}},count:1},Tags:["arm64","rampa_stair3","rusted","useless"],teleport_duration:1}
execute as @a[tag=arm_setup_rusted,tag=arm_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["8"]}}}}] at @s unless entity @e[tag=arm64,tag=useless,tag=rampa_stair4] run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:potion",components:{"minecraft:custom_model_data":80,"minecraft:potion_contents":{custom_color:0}},count:1},Tags:["arm64","rampa_stair4","rusted","useless"],teleport_duration:1}
title @a[tag=arm_setup,scores={shiftedit=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["4"]}}}}] actionbar {"text":"SHIFT: BARRIER COLLISION (FOR CUSTOM MODEL ROTATIONS ONLY)","bold":true,"color":"gray","type":"text"}
title @a[tag=arm_setup,scores={shiftedit=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["4"]}}}}] actionbar {"text":"SHIFT: BARRIER COLLISION (FOR CUSTOM MODEL ROTATIONS ONLY)","bold":true,"color":"green","type":"text"}



#MENU
execute if entity @e[type=minecraft:item_display,tag=90deg,tag=useless,limit=1] run tellraw @a[gamemode=creative] ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]
execute if entity @e[type=minecraft:item_display,tag=90deg,tag=useless,limit=1] run tellraw @a[gamemode=creative] {"text":"90 Degrees arm position","bold":true,"color":"gold","type":"text"}
execute if entity @e[type=minecraft:item_display,tag=90deg,tag=useless,limit=1] run tellraw @a[gamemode=creative] {"text":" ","type":"text"}
execute if entity @e[type=minecraft:item_display,tag=90deg,tag=!top,tag=useless,limit=1] run tellraw @a[gamemode=creative] ["      ",{"text":"[BOTTOM]","color":"blue","clickEvent":{"action":"run_command","value":"/tag @e[type=minecraft:item_display,tag=90deg,tag=!top,tag=useless,limit=1] add top"},"type":"text"}]
execute if entity @e[type=minecraft:item_display,tag=90deg,tag=top,tag=useless,limit=1] run tellraw @a[gamemode=creative] ["      ",{"text":"[TOP]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @e[type=minecraft:item_display,tag=90deg,tag=top,tag=useless,limit=1] remove top"},"type":"text"}]
execute if entity @e[type=minecraft:item_display,tag=90deg,tag=useless,limit=1] run tellraw @a[gamemode=creative] {"text":" ","type":"text"}



#BOTTOM AND TOP

item replace entity @e[type=minecraft:item_display,tag=90deg,tag=!top,tag=useless,tag=clean,limit=1] container.0 with minecraft:potion[minecraft:custom_model_data=62,potion_contents={custom_color:0}]
item replace entity @e[type=minecraft:item_display,tag=90deg,tag=!top,tag=useless,tag=rusted,limit=1] container.0 with minecraft:potion[minecraft:custom_model_data=64,potion_contents={custom_color:0}]

item replace entity @e[type=minecraft:item_display,tag=90deg,tag=top,tag=useless,tag=clean,limit=1] container.0 with minecraft:potion[minecraft:custom_model_data=87,potion_contents={custom_color:0}]
item replace entity @e[type=minecraft:item_display,tag=90deg,tag=top,tag=useless,tag=rusted,limit=1] container.0 with minecraft:potion[minecraft:custom_model_data=89,potion_contents={custom_color:0}]





data merge entity @e[type=minecraft:item_display,tag=90deg,tag=top,tag=useless,limit=1] {transformation:{left_rotation:[1.0f,0.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
data merge entity @e[type=minecraft:item_display,tag=90deg,tag=!top,tag=useless,limit=1] {transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}






#KILLING FLOOR
execute as @a[tag=arm_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["1"]}}}}] if entity @e[tag=arm64,tag=useless,tag=!32] run kill @e[tag=arm64,tag=useless,tag=!32]
execute as @a[tag=arm_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["2"]}}}}] if entity @e[tag=arm64,tag=useless,tag=!64] run kill @e[tag=arm64,tag=useless,tag=!64]
execute as @a[tag=arm_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["3"]}}}}] if entity @e[tag=arm64,tag=useless,tag=!128] run kill @e[tag=arm64,tag=useless,tag=!128]
execute as @a[tag=arm_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["4"]}}}}] if entity @e[tag=arm64,tag=useless,tag=!90deg] run kill @e[tag=arm64,tag=useless,tag=!90deg]
execute as @a[tag=arm_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["5"]}}}}] if entity @e[tag=arm64,tag=useless,tag=!rampa_stair1] run kill @e[tag=arm64,tag=useless,tag=!rampa_stair1]
execute as @a[tag=arm_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["6"]}}}}] if entity @e[tag=arm64,tag=useless,tag=!rampa_stair2] run kill @e[tag=arm64,tag=useless,tag=!rampa_stair2]
execute as @a[tag=arm_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["7"]}}}}] if entity @e[tag=arm64,tag=useless,tag=!rampa_stair3] run kill @e[tag=arm64,tag=useless,tag=!rampa_stair3]
execute as @a[tag=arm_setup,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["8"]}}}}] if entity @e[tag=arm64,tag=useless,tag=!rampa_stair4] run kill @e[tag=arm64,tag=useless,tag=!rampa_stair4]



execute as @e[type=minecraft:item_display,tag=arm64,tag=useless] run tp @s @p[tag=arm_setup]


execute as @e[type=minecraft:item_display,tag=arm64,tag=useless] at @p[tag=arm_setup,tag=S] run tp @s ^ ^2.5 ^1.5 -180 0
execute as @e[type=minecraft:item_display,tag=arm64,tag=useless] at @p[tag=arm_setup,tag=N] run tp @s ^ ^2.5 ^1.5 0 0
execute as @e[type=minecraft:item_display,tag=arm64,tag=useless] at @p[tag=arm_setup,tag=E] run tp @s ^ ^2.5 ^1.5 90 0
execute as @e[type=minecraft:item_display,tag=arm64,tag=useless] at @p[tag=arm_setup,tag=W] run tp @s ^ ^2.5 ^1.5 -90 0


execute as @e[type=minecraft:item_display,tag=arm64,tag=useless] at @s align xyz run tp @s ~0.5 ~0.5 ~0.5
execute as @e[type=minecraft:item_display,tag=arm64,tag=useless] at @s align xyz run tp @s ~0.5 ~0.5 ~0.5
execute as @e[type=minecraft:item_display,tag=arm64,tag=90deg,tag=top,tag=useless] at @s run tp @s ~ ~ ~ ~180 ~



execute as @a[tag=arm_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["arm_tool"]}}}}] at @s run playsound minecraft:item.trident.return ambient @s ~ ~ ~ 1 2
execute as @a[tag=arm_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["arm_tool"]}}}}] as @e[tag=arm64,tag=useless,tag=!rampa_stair1,tag=!rampa_stair2,tag=!rampa_stair3,tag=!rampa_stair4] run function mapmaker:portal_arm/anim/bindpose
execute as @a[tag=arm_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["arm_tool"]}}}}] as @e[tag=arm64,tag=useless,tag=!32,tag=!64,tag=!128,tag=!90deg] run function mapmaker:portal_arm/anim/bindpose_floor
execute as @a[tag=arm_setup,scores={portalgun=1..,shiftedit=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["arm_tool"]}}}}] run tag @e[tag=arm64,tag=useless,tag=90deg] add barriercollus
execute as @a[tag=arm_setup,scores={portalgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["arm_tool"]}}}}] run tag @e[tag=arm64,tag=useless] remove useless
