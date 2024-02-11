

execute if score TriggerInfo ltp.options matches 1 if data entity @s LastDeathLocation run tellraw @s [" ",{"text":"Coordinates:  ","color":"gray"},{"color":"white","nbt":"LastDeathLocation.pos[0]","entity":"@s"},{"text":", ","color":"gray"},{"color":"white","nbt":"LastDeathLocation.pos[1]","entity":"@s"},{"text":", ","color":"gray"},{"color":"white","nbt":"LastDeathLocation.pos[2]","entity":"@s"},{"text":"\n Dimension:     ","color":"gray"},{"color":"white","nbt":"LastDeathLocation.dimension","entity":"@s"}]

execute unless data entity @s LastDeathLocation run tellraw @s [" ",{"text":"Last death location not found!","color":"gray"}]
tellraw @s ""
execute if score Enabled ltp.options matches 1 unless score Cooldown ltp.options matches 1.. if data entity @s LastDeathLocation run tellraw @s [" ",{"text":"Sneak to teleport!\n","color":"gray"}]
execute if score Enabled ltp.options matches 1 if score Cooldown ltp.options matches 1.. unless score @s ltp.cooldown matches 1.. if data entity @s LastDeathLocation run tellraw @s [" ",{"text":"Sneak to teleport!\n","color":"gray"}]
