# This function forces a tp, without checking any conditions

# Put nbt on storage for better performance
data modify storage ltp:ltp tmp.data set from entity @s SelectedItem.tag


# Check dimension
data modify storage ltp:ltp dimension set from storage ltp:ltp tmp.data.LodestoneDimension
execute store success score $different_dim ltp.tmp run data modify storage ltp:ltp tmp.data.LodestoneDimension set from entity @s Dimension


# Get target coordinates
execute store result score $target_x ltp.tmp run data get storage ltp:ltp tmp.data.LodestonePos.X
execute store result score $target_y ltp.tmp run data get storage ltp:ltp tmp.data.LodestonePos.Y
execute store result score $target_z ltp.tmp run data get storage ltp:ltp tmp.data.LodestonePos.Z
scoreboard players add $target_y ltp.tmp 1


# Get player coordinates
execute store result score $self_x ltp.tmp run data get entity @s Pos[0]
execute store result score $self_y ltp.tmp run data get entity @s Pos[1]
execute store result score $self_z ltp.tmp run data get entity @s Pos[2]


# Cancel if player is already at target pos
scoreboard players set $at_destination ltp.tmp 0
execute if score $different_dim ltp.tmp matches 0 if score $target_x ltp.tmp = $self_x ltp.tmp if score $target_y ltp.tmp = $self_y ltp.tmp if score $target_z ltp.tmp = $self_z ltp.tmp run scoreboard players set $at_destination ltp.tmp 1
execute if score $at_destination ltp.tmp matches 0 run function ltp:dimension
execute if score $at_destination ltp.tmp matches 1 run function ltp:teleport/success


# Clear tmp
scoreboard players reset $different_dim ltp.tmp
scoreboard players reset $target_x ltp.tmp
scoreboard players reset $target_y ltp.tmp
scoreboard players reset $target_z ltp.tmp
scoreboard players reset $self_x ltp.tmp
scoreboard players reset $self_y ltp.tmp
scoreboard players reset $self_z ltp.tmp
scoreboard players reset $at_destination ltp.tmp
data remove storage ltp:ltp tmp
data remove storage ltp:ltp dimension
