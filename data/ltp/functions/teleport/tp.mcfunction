
# Reset timer
scoreboard players set @s ltp.timer -1000000


# Schedule confirmation for the next tick. Keep trying until the destination is reached.
tag @s add ltp.confirm
schedule function ltp:teleport/confirm/scheduled 1t


scoreboard players operation @s ltp.cooldown = Cooldown ltp.options


# Get coordinates
execute store result score $tp_x ltp.tmp run data get storage ltp:ltp tmp.data.LodestonePos.X
execute store result score $tp_y ltp.tmp run data get storage ltp:ltp tmp.data.LodestonePos.Y
execute store result score $tp_z ltp.tmp run data get storage ltp:ltp tmp.data.LodestonePos.Z
scoreboard players add $tp_y ltp.tmp 1


# Teleport to scoreboard coordinates
scoreboard players set $tp_success ltp.tmp 1
tp @s 0 0 0

execute if score $tp_x ltp.tmp matches ..-1 at @s run function ltp:teleport/tp/x_neg
execute if score $tp_x ltp.tmp matches 1.. at @s run function ltp:teleport/tp/x_pos

execute if score $tp_y ltp.tmp matches ..-1 at @s run function ltp:teleport/tp/y_neg
execute if score $tp_y ltp.tmp matches 1.. at @s run function ltp:teleport/tp/y_pos

execute if score $tp_z ltp.tmp matches ..-1 at @s run function ltp:teleport/tp/z_neg
execute if score $tp_z ltp.tmp matches 1.. at @s run function ltp:teleport/tp/z_pos


# Give resistance: make player unkillable for a few seconds
execute if score GiveResistance ltp.options matches 1 run effect give @s minecraft:resistance 10 255 false


# Clear tmp
scoreboard players reset $tp_x ltp.tmp
scoreboard players reset $tp_y ltp.tmp
scoreboard players reset $tp_z ltp.tmp
scoreboard players reset $distance ltp.tmp
