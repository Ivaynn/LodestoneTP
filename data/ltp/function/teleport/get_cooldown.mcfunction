
scoreboard players operation $sec ltp.cooldown = @s ltp.cooldown
scoreboard players operation $sec ltp.cooldown /= #20 ltp.math

scoreboard players operation $min ltp.cooldown = $sec ltp.cooldown
scoreboard players operation $min ltp.cooldown /= #60 ltp.math

scoreboard players operation $hrs ltp.cooldown = $min ltp.cooldown
scoreboard players operation $hrs ltp.cooldown /= #60 ltp.math

execute if score $hrs ltp.cooldown matches 0 if score $min ltp.cooldown matches 0 run tellraw @s ["",{"text":"LodestoneTP > ","color":"dark_aqua"},{"text":"Teleport cooldown: ","color":"gray"},{"color":"gray","score":{"name":"$sec","objective":"ltp.cooldown"}},{"text":"sec","color":"gray"}]
execute if score $hrs ltp.cooldown matches 0 unless score $min ltp.cooldown matches 0 run tellraw @s ["",{"text":"LodestoneTP > ","color":"dark_aqua"},{"text":"Teleport cooldown: ","color":"gray"},{"color":"gray","score":{"name":"$min","objective":"ltp.cooldown"}},{"text":"min","color":"gray"}]
execute unless score $hrs ltp.cooldown matches 0 run tellraw @s ["",{"text":"LodestoneTP > ","color":"dark_aqua"},{"text":"Teleport cooldown: ","color":"gray"},{"color":"gray","score":{"name":"$hrs","objective":"ltp.cooldown"}},{"text":"h","color":"gray"}]

scoreboard players reset $sec ltp.cooldown
scoreboard players reset $min ltp.cooldown
scoreboard players reset $hrs ltp.cooldown
