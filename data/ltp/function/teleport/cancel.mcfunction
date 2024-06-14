execute if score ProgressBar ltp.options matches 1 if score @s ltp.timer matches 20.. run function ltp:teleport/progress_cancel

# Reset timer
scoreboard players set @s ltp.timer -1000000

execute if score $cancel ltp.tmp matches 2.. run playsound minecraft:entity.item.break player @a ~ ~ ~ 1 1.2
execute if score $cancel ltp.tmp matches 2.. run particle minecraft:smoke ~ ~0.7 ~ 0.3 0.4 0.3 0.02 20 normal @a

# excte if score $cancel ltp.tmp matches 1 --> silent cancel
execute if score $cancel ltp.tmp matches 2 run tellraw @s ["",{"text":"LodestoneTP > ","color":"dark_aqua"},{"text":"This compass is invalid!","color":"gray"}]
execute if score $cancel ltp.tmp matches 3 run function ltp:teleport/get_cooldown
execute if score $cancel ltp.tmp matches 4 run tellraw @s ["",{"text":"LodestoneTP > ","color":"dark_aqua"},{"text":"You must be standing on a lodestone block!","color":"gray"}]
execute if score $cancel ltp.tmp matches 5 run tellraw @s ["",{"text":"LodestoneTP > ","color":"dark_aqua"},{"text":"You can't take damage while teleporting!","color":"gray"}]
execute if score $cancel ltp.tmp matches 6 run tellraw @s ["",{"text":"LodestoneTP > ","color":"dark_aqua"},{"text":"You can't move while teleporting!","color":"gray"}]
execute if score $cancel ltp.tmp matches 7 run tellraw @s ["",{"text":"LodestoneTP > ","color":"dark_aqua"},{"text":"Teleporting to other dimensions is disabled!","color":"gray"}]
execute if score $cancel ltp.tmp matches 8 run tellraw @s ["",{"text":"LodestoneTP > ","color":"dark_aqua"},{"text":"Unknown dimension!","color":"gray"}]
execute if score $cancel ltp.tmp matches 9 run tellraw @s ["",{"text":"LodestoneTP > ","color":"dark_aqua"},{"text":"Invalid last death location!","color":"gray"}]

scoreboard players reset $cancel ltp.tmp
