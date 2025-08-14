# Performs an iteration of Bhaskara-Brouncker algorithm, then re-calls self
# xi+1 = (xi + Q)/(xi +1) 

scoreboard players operation prev workspace = out workspace

scoreboard players operation denominator workspace = out workspace
scoreboard players add denominator workspace 256
scoreboard players operation out workspace += in workspace
scoreboard players operation out workspace *= 256 constant
scoreboard players operation out workspace /= denominator workspace

# Stop when converged, or 32 iterations have occured
scoreboard players add iterations workspace 1
scoreboard players operation prev workspace -= out workspace
execute unless score prev workspace matches -2..2 unless score iterations workspace matches 32.. run function sbpg:maths/square_root_iter
