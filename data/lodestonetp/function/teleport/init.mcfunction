
# Get compass type
scoreboard players set $compass_type lodestonetp.tmp 0
execute if predicate lodestonetp:holding_compass run scoreboard players set $compass_type lodestonetp.tmp 1
execute if predicate lodestonetp:holding_recovery run scoreboard players set $compass_type lodestonetp.tmp 2


# Put nbt on storage for better performance
execute if score $compass_type lodestonetp.tmp matches 1 run data modify storage lodestonetp:tmp tmp.data set from entity @s SelectedItem.components."minecraft:lodestone_tracker"


# Check if compass is valid
scoreboard players set $cancel lodestonetp.tmp 0
execute if score $compass_type lodestonetp.tmp matches 1 unless data storage lodestonetp:tmp tmp.data.target.pos[0] run scoreboard players set $cancel lodestonetp.tmp 2
execute if score $compass_type lodestonetp.tmp matches 2 unless score RecoveryCompass lodestonetp.options matches 1 run scoreboard players set $cancel lodestonetp.tmp 1
execute if score $compass_type lodestonetp.tmp matches 2 if score RecoveryCompass lodestonetp.options matches 1 unless data entity @s LastDeathLocation run scoreboard players set $cancel lodestonetp.tmp 9


# Check if player is on cooldown
execute if score Cooldown lodestonetp.options matches 1.. if score $cancel lodestonetp.tmp matches 0 if score @s lodestonetp.cooldown matches 1.. run scoreboard players set $cancel lodestonetp.tmp 3


# Check dimension
execute if score $compass_type lodestonetp.tmp matches 1 run data modify storage lodestonetp:tmp tmp.dimension set from storage lodestonetp:tmp tmp.data.target.dimension
execute if score $compass_type lodestonetp.tmp matches 2 run data modify storage lodestonetp:tmp tmp.dimension set from entity @s LastDeathLocation.dimension

data modify storage lodestonetp:tmp tmp.dimension_check set from storage lodestonetp:tmp tmp.dimension
execute store success score $different_dim lodestonetp.tmp run data modify storage lodestonetp:tmp tmp.dimension_check set from entity @s Dimension
execute if score CrossDimensions lodestonetp.options matches 0 if score $cancel lodestonetp.tmp matches 0 if score $different_dim lodestonetp.tmp matches 1 run scoreboard players set $cancel lodestonetp.tmp 7


# Teleport
scoreboard players set $tp_success lodestonetp.tmp 0
execute if score $cancel lodestonetp.tmp matches 0 if score $different_dim lodestonetp.tmp matches 1 if score CrossDimensions lodestonetp.options matches 1 run function lodestonetp:teleport/tp
execute if score $cancel lodestonetp.tmp matches 0 if score $different_dim lodestonetp.tmp matches 0 run function lodestonetp:teleport/tp
execute if score $tp_success lodestonetp.tmp matches 0 if score $cancel lodestonetp.tmp matches 0 run scoreboard players set $cancel lodestonetp.tmp 8


# Play animation here (starting position) for the player teleporting away
execute if score $tp_success lodestonetp.tmp matches 1 run playsound minecraft:item.chorus_fruit.teleport player @a ~ ~0.7 ~ 1 0.6
execute if score $tp_success lodestonetp.tmp matches 1 run particle minecraft:explosion ~ ~0.7 ~ 0 0 0 1 0 normal @a


# If something went wrong, cancel
execute if score $cancel lodestonetp.tmp matches 1.. run function lodestonetp:teleport/cancel


# Clear tmp
scoreboard players reset $compass_type lodestonetp.tmp
scoreboard players reset $cancel lodestonetp.tmp
scoreboard players reset $tp_success lodestonetp.tmp
scoreboard players reset $different_dim lodestonetp.tmp
data remove storage lodestonetp:tmp tmp
