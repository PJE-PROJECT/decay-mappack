# Set 'in' to 256*num, calculates 256*sqrt(num) into 'out'

scoreboard players set out workspace 256
scoreboard players set iterations workspace 0
function sbpg:maths/square_root_iter

# out = (prev + out)/2
scoreboard players operation prev workspace /= 2 constant
scoreboard players operation out workspace += prev workspace