#> as player

# Get offhand item
data modify storage lodestonetp:tmp tmp.offhand set from entity @s equipment.offhand


# If item count is less than ItemCost, cancel
execute store result score $item_count lodestonetp.tmp run data get storage lodestonetp:tmp tmp.offhand.count 1
execute if score $item_count lodestonetp.tmp < ItemCost lodestonetp.options run return run scoreboard players set $cancel lodestonetp.tmp 10


# Check if all item data (except count) is equal
data remove storage lodestonetp:tmp tmp.offhand.count
scoreboard players set $different_item lodestonetp.tmp 0
execute store success score $different_item lodestonetp.tmp run data modify storage lodestonetp:tmp tmp.offhand set from storage lodestonetp:item_cost item
execute if score $different_item lodestonetp.tmp matches 1 run return run scoreboard players set $cancel lodestonetp.tmp 10
