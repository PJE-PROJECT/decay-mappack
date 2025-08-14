execute align xyz run tp @s[tag=N] ~0.5 ~0.5 ~0.5 180 0
execute align xyz run tp @s[tag=S] ~0.5 ~0.5 ~0.5 0 0
execute align xyz run tp @s[tag=E] ~0.5 ~0.5 ~0.5 -90 0
execute align xyz run tp @s[tag=W] ~0.5 ~0.5 ~0.5 90 0
tag @s add on_button

data modify entity @s Motion[0] set value 0d
data modify entity @s Motion[1] set value 0d
data modify entity @s Motion[2] set value 0d