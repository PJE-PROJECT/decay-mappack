

scoreboard objectives add main_score dummy
scoreboard objectives add const dummy
scoreboard objectives add physical_things.id dummy
scoreboard objectives add physical_things.player_id dummy
scoreboard objectives add physical_things.sneak custom:sneak_time
scoreboard objectives add physical_things.jump custom:jump
scoreboard objectives add physical_things.coas used:carrot_on_a_stick

scoreboard objectives add physical_things.air dummy
scoreboard objectives add physical_things.rot dummy
scoreboard objectives add physical_things.rot2 dummy
scoreboard objectives add physical_things.vx dummy
scoreboard objectives add physical_things.vy dummy
scoreboard objectives add physical_things.vz dummy

scoreboard objectives add physical_things.pos_x dummy
scoreboard objectives add physical_things.pos_y dummy
scoreboard objectives add physical_things.pos_z dummy

scoreboard objectives add physical_things.mot_x dummy
scoreboard objectives add physical_things.mot_y dummy
scoreboard objectives add physical_things.mot_y2 dummy
scoreboard objectives add physical_things.mot_z dummy

scoreboard players set #780000 const 780000
scoreboard players set #1500000 const 1500000
scoreboard players set #-1500000 const -1500000
scoreboard players set #330000 const 330000
scoreboard players set #370000 const 370000
scoreboard players set #-370000 const -370000

scoreboard players set #40 const 40
scoreboard players set #43 const 43
scoreboard players set #99 const 99
scoreboard players set #100 const 100
scoreboard players set #400 const 400
scoreboard players set #2800 const 2800
scoreboard players set #1000 const 1000
scoreboard players set #10000 const 10000


schedule function physical_things:load_5s 5s