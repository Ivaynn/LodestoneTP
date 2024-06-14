
data modify storage ltp:ltp tmp.data set from entity @s SelectedItem.components."minecraft:lodestone_tracker"
execute if score TriggerInfo ltp.options matches 1 if data storage ltp:ltp tmp.data.target.pos[0] run tellraw @s [" ",{"text":"Coordinates:  ","color":"gray"},{"color":"white","nbt":"tmp.data.target.pos[0]","storage":"ltp:ltp"},{"text":", ","color":"gray"},{"color":"white","nbt":"tmp.data.target.pos[1]","storage":"ltp:ltp"},{"text":", ","color":"gray"},{"color":"white","nbt":"tmp.data.target.pos[2]","storage":"ltp:ltp"},{"text":"\n Dimension:     ","color":"gray"},{"color":"white","nbt":"tmp.data.target.dimension","storage":"ltp:ltp"}]

execute unless data storage ltp:ltp tmp.data.target.pos[0] run tellraw @s [" ",{"text":"This compass is invalid!","color":"gray"}]
tellraw @s ""
execute if score Enabled ltp.options matches 1 unless score Cooldown ltp.options matches 1.. if data storage ltp:ltp tmp.data.target.pos[0] run tellraw @s [" ",{"text":"Sneak to teleport!\n","color":"gray"}]
execute if score Enabled ltp.options matches 1 if score Cooldown ltp.options matches 1.. unless score @s ltp.cooldown matches 1.. if data storage ltp:ltp tmp.data.target.pos[0] run tellraw @s [" ",{"text":"Sneak to teleport!\n","color":"gray"}]
data remove storage ltp:ltp tmp
