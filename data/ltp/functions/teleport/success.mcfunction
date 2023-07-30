
# Make hover text with coordinates and dimension
data modify storage ltp:ltp tmp.json set value '["",{"nbt":"tmp.data.LodestonePos.X","storage":"ltp:ltp"},", ",{"nbt":"tmp.data.LodestonePos.Y","storage":"ltp:ltp"},", ",{"nbt":"tmp.data.LodestonePos.Z","storage":"ltp:ltp"},"\\n",{"nbt":"dimension","storage":"ltp:ltp"}]'


# Show message
execute if data entity @s SelectedItem.tag.display.Name run tellraw @s [{"text":"","hoverEvent":{"action":"show_text","contents":[{"nbt":"tmp.json","storage":"ltp:ltp","color":"gray","interpret":true}]}},{"text":"LodestoneTP > ","color":"dark_aqua"},{"text":"Teleported to ","color":"gray"},{"nbt":"tmp.data.display.Name","storage":"ltp:ltp","color":"gray","interpret":true}]
execute unless data entity @s SelectedItem.tag.display.Name run tellraw @s [{"text":"","hoverEvent":{"action":"show_text","contents":[{"nbt":"tmp.json","storage":"ltp:ltp","color":"gray","interpret":true}]}},{"text":"LodestoneTP > ","color":"dark_aqua"},{"text":"Teleported to Lodestone","color":"gray"}]


# Sound effect at destination
execute at @s run playsound minecraft:item.chorus_fruit.teleport player @a ~ ~ ~ 1 0.9


# Hide progress bar
execute if score ProgressBar ltp.options matches 1 if score SneakTime ltp.options matches 20.. run function ltp:teleport/progress_full


# Break any blocks at destination
execute if score BreakBlocks ltp.options matches 1 at @s unless block ~ ~ ~ #ltp:keep run setblock ~ ~ ~ minecraft:air destroy


# Break compass
execute if score BreakCompass ltp.options matches 1 run function ltp:teleport/break_compass
