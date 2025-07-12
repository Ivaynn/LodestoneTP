
data modify storage lodestonetp:tmp tmp.data set from entity @s SelectedItem.components."minecraft:lodestone_tracker"
execute if score TriggerInfo lodestonetp.options matches 1 if data storage lodestonetp:tmp tmp.data.target.pos[0] run tellraw @s [" ",{text: "Coordinates:  ", color: "gray"},{ color: "white","nbt":"tmp.data.target.pos[0]","storage":"lodestonetp:tmp"},{text: ", ", color: "gray"},{ color: "white","nbt":"tmp.data.target.pos[1]","storage":"lodestonetp:tmp"},{text: ", ", color: "gray"},{ color: "white","nbt":"tmp.data.target.pos[2]","storage":"lodestonetp:tmp"},{text: "\n Dimension:     ", color: "gray"},{ color: "white","nbt":"tmp.data.target.dimension","storage":"lodestonetp:tmp"}]

execute unless data storage lodestonetp:tmp tmp.data.target.pos[0] run tellraw @s [" ",{text: "This compass is invalid!", color: "gray"}]
tellraw @s ""
execute if score Enabled lodestonetp.options matches 1 unless score Cooldown lodestonetp.options matches 1.. if data storage lodestonetp:tmp tmp.data.target.pos[0] run tellraw @s [" ",{text: "Sneak to teleport!\n", color: "gray"}]
execute if score Enabled lodestonetp.options matches 1 if score Cooldown lodestonetp.options matches 1.. unless score @s lodestonetp.cooldown matches 1.. if data storage lodestonetp:tmp tmp.data.target.pos[0] run tellraw @s [" ",{text: "Sneak to teleport!\n", color: "gray"}]
data remove storage lodestonetp:tmp tmp
