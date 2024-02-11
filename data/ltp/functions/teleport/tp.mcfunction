
# Reset timer
scoreboard players set @s ltp.timer -1000000
scoreboard players operation @s ltp.cooldown = Cooldown ltp.options


# Macro inputs: {X, Y, Z, Dimension}
data modify storage ltp:ltp tmp.macro set from storage ltp:ltp tmp.data.LodestonePos
data modify storage ltp:ltp tmp.macro.Dimension set from storage ltp:ltp tmp.data.LodestoneDimension


# Teleport
function ltp:teleport/macro_tp with storage ltp:ltp tmp.macro
scoreboard players set $tp_success ltp.tmp 1
function ltp:teleport/success


# Clear tmp
scoreboard players reset $tp_y ltp.tmp
data remove storage ltp:ltp tmp.macro
