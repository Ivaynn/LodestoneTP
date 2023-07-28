
execute store result score $tmp ltp.x run data get entity @s Pos[0] 10
execute store result score $tmp ltp.y run data get entity @s Pos[1] 10
execute store result score $tmp ltp.z run data get entity @s Pos[2] 10

execute if score @s ltp.timer matches 1.. unless score @s ltp.x = $tmp ltp.x run scoreboard players set $cancel ltp.tmp 6
execute if score @s ltp.timer matches 1.. unless score @s ltp.y = $tmp ltp.y run scoreboard players set $cancel ltp.tmp 6
execute if score @s ltp.timer matches 1.. unless score @s ltp.z = $tmp ltp.z run scoreboard players set $cancel ltp.tmp 6

scoreboard players operation @s ltp.x = $tmp ltp.x
scoreboard players operation @s ltp.y = $tmp ltp.y
scoreboard players operation @s ltp.z = $tmp ltp.z

scoreboard players reset $tmp ltp.x
scoreboard players reset $tmp ltp.y
scoreboard players reset $tmp ltp.z
