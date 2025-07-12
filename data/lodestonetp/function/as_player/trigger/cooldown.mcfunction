
scoreboard players operation $sec lodestonetp.cooldown = @s lodestonetp.cooldown
scoreboard players operation $sec lodestonetp.cooldown /= #20 lodestonetp.math

scoreboard players operation $min lodestonetp.cooldown = $sec lodestonetp.cooldown
scoreboard players operation $min lodestonetp.cooldown /= #60 lodestonetp.math

scoreboard players operation $hrs lodestonetp.cooldown = $min lodestonetp.cooldown
scoreboard players operation $hrs lodestonetp.cooldown /= #60 lodestonetp.math

execute if score $hrs lodestonetp.cooldown matches 0 if score $min lodestonetp.cooldown matches 0 run tellraw @s [" ",{text: "Teleport cooldown: ", color: "gray"},{ color: "gray","score":{"name":"$sec","objective":"lodestonetp.cooldown"}},{text: "sec", color: "gray"}]
execute if score $hrs lodestonetp.cooldown matches 0 unless score $min lodestonetp.cooldown matches 0 run tellraw @s [" ",{text: "Teleport cooldown: ", color: "gray"},{ color: "gray","score":{"name":"$min","objective":"lodestonetp.cooldown"}},{text: "min", color: "gray"}]
execute unless score $hrs lodestonetp.cooldown matches 0 run tellraw @s [" ",{text: "Teleport cooldown: ", color: "gray"},{ color: "gray","score":{"name":"$hrs","objective":"lodestonetp.cooldown"}},{text: "h", color: "gray"}]
tellraw @s ""

scoreboard players reset $sec lodestonetp.cooldown
scoreboard players reset $min lodestonetp.cooldown
scoreboard players reset $hrs lodestonetp.cooldown
