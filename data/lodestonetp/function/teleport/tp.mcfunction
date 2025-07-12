
# Reset timer
scoreboard players set @s lodestonetp.timer -1000000
scoreboard players operation @s lodestonetp.cooldown = Cooldown lodestonetp.options


# Macro inputs: {x, y, z, dim}
execute if score $compass_type lodestonetp.tmp matches 1 run data modify storage lodestonetp:tmp tmp.macro.x set from storage lodestonetp:tmp tmp.data.target.pos[0]
execute if score $compass_type lodestonetp.tmp matches 1 run data modify storage lodestonetp:tmp tmp.macro.y set from storage lodestonetp:tmp tmp.data.target.pos[1]
execute if score $compass_type lodestonetp.tmp matches 1 run data modify storage lodestonetp:tmp tmp.macro.z set from storage lodestonetp:tmp tmp.data.target.pos[2]

execute if score $compass_type lodestonetp.tmp matches 2 run data modify storage lodestonetp:tmp tmp.macro.x set from entity @s LastDeathLocation.pos[0]
execute if score $compass_type lodestonetp.tmp matches 2 run data modify storage lodestonetp:tmp tmp.macro.y set from entity @s LastDeathLocation.pos[1]
execute if score $compass_type lodestonetp.tmp matches 2 run data modify storage lodestonetp:tmp tmp.macro.z set from entity @s LastDeathLocation.pos[2]

data modify storage lodestonetp:tmp tmp.macro.dim set from storage lodestonetp:tmp tmp.dimension


# Teleport
function lodestonetp:teleport/macro_tp with storage lodestonetp:tmp tmp.macro
execute if score $compass_type lodestonetp.tmp matches 1 at @s run tp @s ~ ~1 ~

scoreboard players set $tp_success lodestonetp.tmp 1
function lodestonetp:teleport/success


# Clear tmp
scoreboard players reset $tp_y lodestonetp.tmp
data remove storage lodestonetp:tmp tmp.macro
