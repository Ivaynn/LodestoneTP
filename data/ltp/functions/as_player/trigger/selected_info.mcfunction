
data modify storage ltp:ltp tmp.data set from entity @s SelectedItem.tag
execute if data storage ltp:ltp tmp.data.LodestonePos.X run tellraw @s [" ",{"text":"Target position: ","color":"gray"},{"color":"gray","nbt":"tmp.data.LodestonePos.X","storage":"ltp:ltp"},{"text":", ","color":"gray"},{"color":"gray","nbt":"tmp.data.LodestonePos.Y","storage":"ltp:ltp"},{"text":", ","color":"gray"},{"color":"gray","nbt":"tmp.data.LodestonePos.Z","storage":"ltp:ltp"},{"text":"\n Dimension: ","color":"gray"},{"color":"gray","nbt":"tmp.data.LodestoneDimension","storage":"ltp:ltp"}]
execute unless data storage ltp:ltp tmp.data.LodestonePos.X run tellraw @s [" ",{"text":"This compass is invalid!","color":"gray"}]
tellraw @s ""
execute if score Enabled ltp.options matches 1 unless score Cooldown ltp.options matches 1.. if data storage ltp:ltp tmp.data.LodestonePos.X run tellraw @s [" ",{"text":"Sneak to teleport!\n","color":"gray"}]
execute if score Enabled ltp.options matches 1 if score Cooldown ltp.options matches 1.. unless score @s ltp.cooldown matches 1.. if data storage ltp:ltp tmp.data.LodestonePos.X run tellraw @s [" ",{"text":"Sneak to teleport!\n","color":"gray"}]
data remove storage ltp:ltp tmp
