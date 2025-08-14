tag @a[nbt=!{SelectedItem:{components:{"minecraft:custom_data":{Tags:["itempicker"]}}}}] remove itempicker
tag @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["itempicker"]}}}}] add itempicker
tag @a[nbt=!{SelectedItem:{components:{"minecraft:custom_data":{Tags:["itempickeractive"]}}}}] remove itempickeractive
tag @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["itempickeractive"]}}}}] add itempickeractive

tag @a[y_rotation=135..-135] add N
tag @a[y_rotation=-135..135] remove N
tag @a[y_rotation=-135..-45] add E
tag @a[y_rotation=-45..-135] remove E
tag @a[y_rotation=-45..45] add S
tag @a[y_rotation=45..-45] remove S
tag @a[y_rotation=45..135] add W
tag @a[y_rotation=135..45] remove W

tag @e[type=minecraft:armor_stand,y_rotation=135..-135] add N
tag @e[type=minecraft:armor_stand,y_rotation=-135..135] remove N
tag @e[type=minecraft:armor_stand,y_rotation=-135..-45] add E
tag @e[type=minecraft:armor_stand,y_rotation=-45..-135] remove E
tag @e[type=minecraft:armor_stand,y_rotation=-45..45] add S
tag @e[type=minecraft:armor_stand,y_rotation=45..-45] remove S
tag @e[type=minecraft:armor_stand,y_rotation=45..135] add W
tag @e[type=minecraft:armor_stand,y_rotation=135..45] remove W

tag @e[type=minecraft:marker,y_rotation=135..-135] add N
tag @e[type=minecraft:marker,y_rotation=-135..135] remove N
tag @e[type=minecraft:marker,y_rotation=-135..-45] add E
tag @e[type=minecraft:marker,y_rotation=-45..-135] remove E
tag @e[type=minecraft:marker,y_rotation=-45..45] add S
tag @e[type=minecraft:marker,y_rotation=45..-45] remove S
tag @e[type=minecraft:marker,y_rotation=45..135] add W
tag @e[type=minecraft:marker,y_rotation=135..45] remove W

tag @e[type=minecraft:item_display,y_rotation=135..-135] add N
tag @e[type=minecraft:item_display,y_rotation=-135..135] remove N
tag @e[type=minecraft:item_display,y_rotation=-135..-45] add E
tag @e[type=minecraft:item_display,y_rotation=-45..-135] remove E
tag @e[type=minecraft:item_display,y_rotation=-45..45] add S
tag @e[type=minecraft:item_display,y_rotation=45..-45] remove S
tag @e[type=minecraft:item_display,y_rotation=45..135] add W
tag @e[type=minecraft:item_display,y_rotation=135..45] remove W



tag @a[x_rotation=5..90] add D
tag @a[x_rotation=5..90] remove U
tag @a[x_rotation=-90..5] remove D
tag @a[x_rotation=-90..5] add U

tag @a[x_rotation=90..57] remove UDF
tag @a[x_rotation=57..-90] add UDF