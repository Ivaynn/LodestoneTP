
# Verify exceptions
scoreboard players set $cancel lodestonetp.tmp 0
execute if score OnLodestone lodestonetp.options matches 1 if score $cancel lodestonetp.tmp matches 0 unless predicate lodestonetp:on_lodestone run scoreboard players set $cancel lodestonetp.tmp 4
execute if score DamageCancel lodestonetp.options matches 1 if score $cancel lodestonetp.tmp matches 0 unless data entity @s {HurtTime:0s} run scoreboard players set $cancel lodestonetp.tmp 5
execute if score MovingCancel lodestonetp.options matches 1 if score $cancel lodestonetp.tmp matches 0 run function lodestonetp:as_player/moving_cancel


# Cancel or increment
execute if score $cancel lodestonetp.tmp matches 1.. if score @s lodestonetp.timer matches 0.. run function lodestonetp:teleport/cancel
execute if score $cancel lodestonetp.tmp matches 0 run scoreboard players add @s lodestonetp.timer 1


# Particles
execute if score @s lodestonetp.timer matches 1.. run particle minecraft:portal ~ ~0.8 ~ 0.1 0.25 0.1 0.7 1 normal @a
execute if score @s lodestonetp.timer matches 1.. run particle minecraft:reverse_portal ~ ~0.8 ~ 0.1 0.25 0.1 0.1 1 normal @a


# Recovery compass location check + warning
execute if score RecoveryCompass lodestonetp.options matches 1 if score $cancel lodestonetp.tmp matches 0 if score @s lodestonetp.timer matches 1 if predicate lodestonetp:holding_recovery run function lodestonetp:as_player/recovery_check


# Sound
scoreboard players operation $is_zero lodestonetp.tmp = @s lodestonetp.timer
scoreboard players operation $is_zero lodestonetp.tmp %= #20 lodestonetp.math
execute if score @s lodestonetp.timer matches 1.. if score $cancel lodestonetp.tmp matches 0 if score $is_zero lodestonetp.tmp matches 0 run function lodestonetp:as_player/playsound
scoreboard players reset $is_zero lodestonetp.tmp


# Check valid compass -> Teleport
execute if score $cancel lodestonetp.tmp matches 0 if score @s lodestonetp.timer >= SneakTime lodestonetp.options run function lodestonetp:teleport/init
scoreboard players reset $cancel lodestonetp.tmp