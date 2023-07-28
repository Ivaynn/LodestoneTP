
# Verify exceptions
scoreboard players set $cancel ltp.tmp 0
execute if score OnLodestone ltp.options matches 1 if score $cancel ltp.tmp matches 0 unless predicate ltp:on_lodestone run scoreboard players set $cancel ltp.tmp 4
execute if score DamageCancel ltp.options matches 1 if score $cancel ltp.tmp matches 0 unless data entity @s {HurtTime:0s} run scoreboard players set $cancel ltp.tmp 5
execute if score MovingCancel ltp.options matches 1 if score $cancel ltp.tmp matches 0 run function ltp:as_player/moving_cancel


# Cancel or increment
execute if score $cancel ltp.tmp matches 1.. if score @s ltp.timer matches 0.. run function ltp:teleport/cancel
execute if score $cancel ltp.tmp matches 0 run scoreboard players add @s ltp.timer 1


# Particles
execute if score @s ltp.timer matches 1.. run particle minecraft:portal ~ ~0.8 ~ 0.1 0.25 0.1 0.7 1 normal @a
execute if score @s ltp.timer matches 1.. run particle minecraft:reverse_portal ~ ~0.8 ~ 0.1 0.25 0.1 0.1 1 normal @a


# Sound
scoreboard players operation $is_zero ltp.tmp = @s ltp.timer
scoreboard players operation $is_zero ltp.tmp %= #20 ltp.math
execute if score @s ltp.timer matches 1.. if score $cancel ltp.tmp matches 0 if score $is_zero ltp.tmp matches 0 run function ltp:as_player/playsound
scoreboard players reset $is_zero ltp.tmp


# Check valid compass -> Teleport
execute if score $cancel ltp.tmp matches 0 if score @s ltp.timer >= SneakTime ltp.options run function ltp:teleport/init
scoreboard players reset $cancel ltp.tmp