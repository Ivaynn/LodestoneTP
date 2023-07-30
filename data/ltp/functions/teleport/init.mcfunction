
# Put nbt on storage for better performance
data modify storage ltp:ltp tmp.data set from entity @s SelectedItem.tag


# Check if compass is valid
scoreboard players set $cancel ltp.tmp 0
execute unless data storage ltp:ltp tmp.data.LodestonePos.X run scoreboard players set $cancel ltp.tmp 2


# Check if player is on cooldown
execute if score Cooldown ltp.options matches 1.. if score $cancel ltp.tmp matches 0 if score @s ltp.cooldown matches 1.. run scoreboard players set $cancel ltp.tmp 3


# Check dimension
data modify storage ltp:ltp dimension set from storage ltp:ltp tmp.data.LodestoneDimension
execute store success score $different_dim ltp.tmp run data modify storage ltp:ltp tmp.data.LodestoneDimension set from entity @s Dimension
execute if score CrossDimensions ltp.options matches 0 if score $cancel ltp.tmp matches 0 if score $different_dim ltp.tmp matches 1 run scoreboard players set $cancel ltp.tmp 7


# Teleport
scoreboard players set $tp_success ltp.tmp 0
execute if score $cancel ltp.tmp matches 0 if score $different_dim ltp.tmp matches 1 if score CrossDimensions ltp.options matches 1 run function ltp:dimension
execute if score $cancel ltp.tmp matches 0 if score $different_dim ltp.tmp matches 0 run function ltp:teleport/tp
execute if score $tp_success ltp.tmp matches 0 if score $cancel ltp.tmp matches 0 run scoreboard players set $cancel ltp.tmp 8


# Show success or cancel message
execute if score $tp_success ltp.tmp matches 0 run function ltp:teleport/cancel
execute if score $tp_success ltp.tmp matches 1 run function ltp:teleport/success


# Clear tmp
scoreboard players reset $cancel ltp.tmp
scoreboard players reset $tp_success ltp.tmp
scoreboard players reset $different_dim ltp.tmp
data remove storage ltp:ltp tmp
data remove storage ltp:ltp dimension
