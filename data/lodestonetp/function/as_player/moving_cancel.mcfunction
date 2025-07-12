
execute store result score $tmp lodestonetp.x run data get entity @s Pos[0] 10
execute store result score $tmp lodestonetp.y run data get entity @s Pos[1] 10
execute store result score $tmp lodestonetp.z run data get entity @s Pos[2] 10

execute if score @s lodestonetp.timer matches 1.. unless score @s lodestonetp.x = $tmp lodestonetp.x run scoreboard players set $cancel lodestonetp.tmp 6
execute if score @s lodestonetp.timer matches 1.. unless score @s lodestonetp.y = $tmp lodestonetp.y run scoreboard players set $cancel lodestonetp.tmp 6
execute if score @s lodestonetp.timer matches 1.. unless score @s lodestonetp.z = $tmp lodestonetp.z run scoreboard players set $cancel lodestonetp.tmp 6

scoreboard players operation @s lodestonetp.x = $tmp lodestonetp.x
scoreboard players operation @s lodestonetp.y = $tmp lodestonetp.y
scoreboard players operation @s lodestonetp.z = $tmp lodestonetp.z

scoreboard players reset $tmp lodestonetp.x
scoreboard players reset $tmp lodestonetp.y
scoreboard players reset $tmp lodestonetp.z
