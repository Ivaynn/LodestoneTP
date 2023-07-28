
# Make hover text with coordinates and dimension
data modify storage ltp:ltp tmp.json set value '["",{"nbt":"tmp.data.LodestonePos.X","storage":"ltp:ltp"},", ",{"nbt":"tmp.data.LodestonePos.Y","storage":"ltp:ltp"},", ",{"nbt":"tmp.data.LodestonePos.Z","storage":"ltp:ltp"},"\\n",{"nbt":"dimension","storage":"ltp:ltp"}]'


# Show message
execute if data entity @s SelectedItem.tag.display.Name run tellraw @s [{"text":"","hoverEvent":{"action":"show_text","contents":[{"nbt":"tmp.json","storage":"ltp:ltp","color":"gray","interpret":true}]}},{"text":"LodestoneTP > ","color":"dark_aqua"},{"text":"Teleported to ","color":"gray"},{"nbt":"tmp.data.display.Name","storage":"ltp:ltp","color":"gray","interpret":true}]
execute unless data entity @s SelectedItem.tag.display.Name run tellraw @s [{"text":"","hoverEvent":{"action":"show_text","contents":[{"nbt":"tmp.json","storage":"ltp:ltp","color":"gray","interpret":true}]}},{"text":"LodestoneTP > ","color":"dark_aqua"},{"text":"Teleported to Lodestone","color":"gray"}]
