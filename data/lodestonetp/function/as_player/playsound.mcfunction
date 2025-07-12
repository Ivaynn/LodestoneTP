
# Get progress percentage (0-10)
scoreboard players operation $progress lodestonetp.tmp = @s lodestonetp.timer
scoreboard players operation $progress lodestonetp.tmp *= #10 lodestonetp.math
scoreboard players operation $progress lodestonetp.tmp /= SneakTime lodestonetp.options


execute if score $progress lodestonetp.tmp matches 0 at @s run playsound minecraft:item.lodestone_compass.lock player @a ~ ~ ~ 1 0.7
execute if score $progress lodestonetp.tmp matches 1 at @s run playsound minecraft:item.lodestone_compass.lock player @a ~ ~ ~ 1 0.8
execute if score $progress lodestonetp.tmp matches 2 at @s run playsound minecraft:item.lodestone_compass.lock player @a ~ ~ ~ 1 0.9
execute if score $progress lodestonetp.tmp matches 3 at @s run playsound minecraft:item.lodestone_compass.lock player @a ~ ~ ~ 1 1.0
execute if score $progress lodestonetp.tmp matches 4 at @s run playsound minecraft:item.lodestone_compass.lock player @a ~ ~ ~ 1 1.1
execute if score $progress lodestonetp.tmp matches 5 at @s run playsound minecraft:item.lodestone_compass.lock player @a ~ ~ ~ 1 1.2
execute if score $progress lodestonetp.tmp matches 6 at @s run playsound minecraft:item.lodestone_compass.lock player @a ~ ~ ~ 1 1.3
execute if score $progress lodestonetp.tmp matches 7 at @s run playsound minecraft:item.lodestone_compass.lock player @a ~ ~ ~ 1 1.4
execute if score $progress lodestonetp.tmp matches 8 at @s run playsound minecraft:item.lodestone_compass.lock player @a ~ ~ ~ 1 1.5
execute if score $progress lodestonetp.tmp matches 9 at @s run playsound minecraft:item.lodestone_compass.lock player @a ~ ~ ~ 1 1.6


# Progress bar
execute if score ProgressBar lodestonetp.options matches 1 if score SneakTime lodestonetp.options matches 20.. run function lodestonetp:as_player/progress_bar
scoreboard players reset $progress lodestonetp.tmp
