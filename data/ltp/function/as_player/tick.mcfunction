# Executed every tick, by every player


# Trigger
scoreboard players enable @s LodestoneTP
execute if score @s LodestoneTP matches 1.. run function ltp:as_player/trigger/init
scoreboard players set @s LodestoneTP 0


# Cooldown
execute if score Cooldown ltp.options matches 1.. run function ltp:as_player/cooldown


# Check teleporting conditions
execute unless score Enabled ltp.options matches 1 run return run scoreboard players set @s ltp.timer 0
execute as @s[gamemode=spectator] run return run scoreboard players set @s ltp.timer 0 
execute unless predicate ltp:is_sneaking run return run scoreboard players set @s ltp.timer 0 


# Main
execute if predicate ltp:holding_compass if items entity @s weapon.mainhand minecraft:compass[minecraft:lodestone_tracker] at @s run return run function ltp:as_player/tick_sneaking
execute if score RecoveryCompass ltp.options matches 1 if predicate ltp:holding_recovery at @s run return run function ltp:as_player/tick_sneaking
