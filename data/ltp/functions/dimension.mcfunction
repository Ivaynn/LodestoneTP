
# Add your custom dimensions here:
execute if data storage ltp:ltp {dimension:"minecraft:overworld"} in minecraft:overworld run function ltp:teleport/tp
execute if data storage ltp:ltp {dimension:"minecraft:the_nether"} in minecraft:the_nether run function ltp:teleport/tp
execute if data storage ltp:ltp {dimension:"minecraft:the_end"} in minecraft:the_end run function ltp:teleport/tp
