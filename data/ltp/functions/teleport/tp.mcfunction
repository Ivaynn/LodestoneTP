
# Reset timer
scoreboard players set @s ltp.timer -1000000
scoreboard players operation @s ltp.cooldown = Cooldown ltp.options


# Macro inputs: {x, y, z, dim}
execute if score $compass_type ltp.tmp matches 1 run data modify storage ltp:ltp tmp.macro.x set from storage ltp:ltp tmp.data.LodestonePos.X
execute if score $compass_type ltp.tmp matches 1 run data modify storage ltp:ltp tmp.macro.y set from storage ltp:ltp tmp.data.LodestonePos.Y
execute if score $compass_type ltp.tmp matches 1 run data modify storage ltp:ltp tmp.macro.z set from storage ltp:ltp tmp.data.LodestonePos.Z

execute if score $compass_type ltp.tmp matches 2 run data modify storage ltp:ltp tmp.macro.x set from entity @s LastDeathLocation.pos[0]
execute if score $compass_type ltp.tmp matches 2 run data modify storage ltp:ltp tmp.macro.y set from entity @s LastDeathLocation.pos[1]
execute if score $compass_type ltp.tmp matches 2 run data modify storage ltp:ltp tmp.macro.z set from entity @s LastDeathLocation.pos[2]

data modify storage ltp:ltp tmp.macro.dim set from storage ltp:ltp tmp.dimension


# Teleport
function ltp:teleport/macro_tp with storage ltp:ltp tmp.macro
execute if score $compass_type ltp.tmp matches 1 at @s run tp @s ~ ~1 ~

scoreboard players set $tp_success ltp.tmp 1
function ltp:teleport/success


# Clear tmp
scoreboard players reset $tp_y ltp.tmp
data remove storage ltp:ltp tmp.macro
