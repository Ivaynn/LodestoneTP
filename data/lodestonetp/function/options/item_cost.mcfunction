#> as player, while holding item

scoreboard players set ItemCost lodestonetp.options 0
data remove storage lodestonetp:item_cost item

execute store result score ItemCost lodestonetp.options run data get entity @s SelectedItem.count
execute if score ItemCost lodestonetp.options matches 1.. run data modify storage lodestonetp:item_cost item set from entity @s SelectedItem
execute if score ItemCost lodestonetp.options matches 1.. run data remove storage lodestonetp:item_cost item.count


# Show updated menu
function lodestonetp:admin/options
