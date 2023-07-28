
# Reset timer
scoreboard players set @s ltp.timer -1000000


scoreboard players operation @s ltp.cooldown = Cooldown ltp.options

playsound minecraft:item.chorus_fruit.teleport player @a ~ ~0.7 ~ 1 0.6
particle minecraft:explosion ~ ~0.7 ~ 0 0 0 1 0 normal @a



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


# Sound effect at destination
execute at @s run playsound minecraft:item.chorus_fruit.teleport player @a ~ ~ ~ 1 0.9


# Hide progress bar
execute if score ProgressBar ltp.options matches 1 if score SneakTime ltp.options matches 20.. run function ltp:teleport/progress_full


# Chat message
function ltp:teleport/success_msg


# Break any blocks at destination + make player unkillable for a few seconds
# Players would take damage when teleporting across dimensions for some reason (maybe server lag?)
execute if score BreakBlocks ltp.options matches 1 at @s unless block ~ ~ ~ #ltp:keep run setblock ~ ~ ~ minecraft:air destroy
execute if score GiveResistance ltp.options matches 1 run effect give @s minecraft:resistance 10 255 false


# Clear tmp
scoreboard players reset $tp_x ltp.tmp
scoreboard players reset $tp_y ltp.tmp
scoreboard players reset $tp_z ltp.tmp
scoreboard players reset $distance ltp.tmp
