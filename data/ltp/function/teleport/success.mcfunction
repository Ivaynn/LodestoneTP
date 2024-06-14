
# Make hover text with coordinates and dimension
execute if score $compass_type ltp.tmp matches 1 run data modify storage ltp:ltp tmp.json set value '["",{"nbt":"tmp.data.target.pos[0]","storage":"ltp:ltp"},", ",{"nbt":"tmp.data.target.pos[1]","storage":"ltp:ltp"},", ",{"nbt":"tmp.data.target.pos[2]","storage":"ltp:ltp"},"\\n",{"nbt":"dimension","storage":"ltp:ltp"}]'
execute if score $compass_type ltp.tmp matches 2 run data modify storage ltp:ltp tmp.json set value '["",{"nbt":"LastDeathLocation.pos[0]","entity":"@s"},", ",{"nbt":"LastDeathLocation.pos[1]","entity":"@s"},", ",{"nbt":"LastDeathLocation.pos[2]","entity":"@s"},"\\n",{"nbt":"LastDeathLocation.dimension","entity":"@s"}]'


# Show message
execute if score $compass_type ltp.tmp matches 1 if data entity @s SelectedItem.components."minecraft:custom_name" run tellraw @s [{"text":"","hoverEvent":{"action":"show_text","contents":[{"nbt":"tmp.json","storage":"ltp:ltp","color":"gray","interpret":true}]}},{"text":"LodestoneTP > ","color":"dark_aqua"},{"text":"Teleported to ","color":"gray"},{"nbt":"SelectedItem.components.\"minecraft:custom_name\"","entity":"@s","color":"gray","interpret":true}]
execute if score $compass_type ltp.tmp matches 1 unless data entity @s SelectedItem.components."minecraft:custom_name" run tellraw @s [{"text":"","hoverEvent":{"action":"show_text","contents":[{"nbt":"tmp.json","storage":"ltp:ltp","color":"gray","interpret":true}]}},{"text":"LodestoneTP > ","color":"dark_aqua"},{"text":"Teleported to Lodestone","color":"gray"}]
execute if score $compass_type ltp.tmp matches 2 run tellraw @s [{"text":"","hoverEvent":{"action":"show_text","contents":[{"nbt":"tmp.json","storage":"ltp:ltp","color":"gray","interpret":true}]}},{"text":"LodestoneTP > ","color":"dark_aqua"},{"text":"Teleported to your last death location","color":"gray"}]


# Sound effect at destination
execute at @s run playsound minecraft:item.chorus_fruit.teleport player @a ~ ~ ~ 1 0.9


# Optional features when a teleport succeeds
execute if score GiveResistance ltp.options matches 1 run effect give @s minecraft:resistance 10 255 false
execute if score ProgressBar ltp.options matches 1 if score SneakTime ltp.options matches 20.. run function ltp:teleport/progress_full
execute if score BreakBlocks ltp.options matches 1 at @s unless block ~ ~ ~ #ltp:keep run setblock ~ ~ ~ minecraft:air destroy
execute if score BreakCompass ltp.options matches 1 run function ltp:teleport/break_compass
