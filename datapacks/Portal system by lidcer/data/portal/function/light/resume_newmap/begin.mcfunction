tp @a[limit=1] @e[tag=shadowmap,limit=1]


item replace entity @e[tag=shadowmap,limit=1] container.0 with minecraft:red_stained_glass[minecraft:custom_model_data=8]


effect give @a minecraft:blindness infinite 0 true
schedule function portal:light/resume_newmap/begin1 2t
schedule function portal:light/resume_newmap/finish 5t

