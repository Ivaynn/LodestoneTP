
# Get compass type
scoreboard players set $compass_type ltp.tmp 0
execute if predicate ltp:holding_tracked run scoreboard players set $compass_type ltp.tmp 1
execute if predicate ltp:holding_recovery run scoreboard players set $compass_type ltp.tmp 2


# Put nbt on storage for better performance
execute if score $compass_type ltp.tmp matches 1 run data modify storage ltp:ltp tmp.data set from entity @s SelectedItem.components."minecraft:lodestone_tracker"


# Check if compass is valid
scoreboard players set $cancel ltp.tmp 0
execute if score $compass_type ltp.tmp matches 1 unless data storage ltp:ltp tmp.data.target.pos[0] run scoreboard players set $cancel ltp.tmp 2
execute if score $compass_type ltp.tmp matches 2 unless score RecoveryCompass ltp.options matches 1 run scoreboard players set $cancel ltp.tmp 1
execute if score $compass_type ltp.tmp matches 2 if score RecoveryCompass ltp.options matches 1 unless data entity @s LastDeathLocation run scoreboard players set $cancel ltp.tmp 9


# Check if player is on cooldown
execute if score Cooldown ltp.options matches 1.. if score $cancel ltp.tmp matches 0 if score @s ltp.cooldown matches 1.. run scoreboard players set $cancel ltp.tmp 3


# Check dimension
execute if score $compass_type ltp.tmp matches 1 run data modify storage ltp:ltp tmp.dimension set from storage ltp:ltp tmp.data.target.dimension
execute if score $compass_type ltp.tmp matches 2 run data modify storage ltp:ltp tmp.dimension set from entity @s LastDeathLocation.dimension

data modify storage ltp:ltp tmp.dimension_check set from storage ltp:ltp tmp.dimension
execute store success score $different_dim ltp.tmp run data modify storage ltp:ltp tmp.dimension_check set from entity @s Dimension
execute if score CrossDimensions ltp.options matches 0 if score $cancel ltp.tmp matches 0 if score $different_dim ltp.tmp matches 1 run scoreboard players set $cancel ltp.tmp 7


# Teleport
scoreboard players set $tp_success ltp.tmp 0
execute if score $cancel ltp.tmp matches 0 if score $different_dim ltp.tmp matches 1 if score CrossDimensions ltp.options matches 1 run function ltp:teleport/tp
execute if score $cancel ltp.tmp matches 0 if score $different_dim ltp.tmp matches 0 run function ltp:teleport/tp
execute if score $tp_success ltp.tmp matches 0 if score $cancel ltp.tmp matches 0 run scoreboard players set $cancel ltp.tmp 8


# Play animation here (starting position) for the player teleporting away
execute if score $tp_success ltp.tmp matches 1 run playsound minecraft:item.chorus_fruit.teleport player @a ~ ~0.7 ~ 1 0.6
execute if score $tp_success ltp.tmp matches 1 run particle minecraft:explosion ~ ~0.7 ~ 0 0 0 1 0 normal @a


# If something went wrong, cancel
execute if score $cancel ltp.tmp matches 1.. run function ltp:teleport/cancel


# Clear tmp
scoreboard players reset $compass_type ltp.tmp
scoreboard players reset $cancel ltp.tmp
scoreboard players reset $tp_success ltp.tmp
scoreboard players reset $different_dim ltp.tmp
data remove storage ltp:ltp tmp
