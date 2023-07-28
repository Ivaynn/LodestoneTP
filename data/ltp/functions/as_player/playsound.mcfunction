
# Get progress percentage (0-10)
scoreboard players operation $progress ltp.tmp = @s ltp.timer
scoreboard players operation $progress ltp.tmp *= #10 ltp.math
scoreboard players operation $progress ltp.tmp /= SneakTime ltp.options


execute if score $progress ltp.tmp matches 0 run playsound minecraft:item.lodestone_compass.lock player @a ~ ~ ~ 1 0.7
execute if score $progress ltp.tmp matches 1 run playsound minecraft:item.lodestone_compass.lock player @a ~ ~ ~ 1 0.8
execute if score $progress ltp.tmp matches 2 run playsound minecraft:item.lodestone_compass.lock player @a ~ ~ ~ 1 0.9
execute if score $progress ltp.tmp matches 3 run playsound minecraft:item.lodestone_compass.lock player @a ~ ~ ~ 1 1.0
execute if score $progress ltp.tmp matches 4 run playsound minecraft:item.lodestone_compass.lock player @a ~ ~ ~ 1 1.1
execute if score $progress ltp.tmp matches 5 run playsound minecraft:item.lodestone_compass.lock player @a ~ ~ ~ 1 1.2
execute if score $progress ltp.tmp matches 6 run playsound minecraft:item.lodestone_compass.lock player @a ~ ~ ~ 1 1.3
execute if score $progress ltp.tmp matches 7 run playsound minecraft:item.lodestone_compass.lock player @a ~ ~ ~ 1 1.4
execute if score $progress ltp.tmp matches 8 run playsound minecraft:item.lodestone_compass.lock player @a ~ ~ ~ 1 1.5
execute if score $progress ltp.tmp matches 9 run playsound minecraft:item.lodestone_compass.lock player @a ~ ~ ~ 1 1.6


# Progress bar
execute if score ProgressBar ltp.options matches 1 if score SneakTime ltp.options matches 20.. run function ltp:as_player/progress_bar
scoreboard players reset $progress ltp.tmp
