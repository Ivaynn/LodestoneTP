# Executed every tick, by every player


# Trigger
scoreboard players enable @s LodestoneTP
execute if score @s LodestoneTP matches 1.. run function lodestonetp:as_player/trigger/init
scoreboard players set @s LodestoneTP 0


# Cooldown
execute if score Cooldown lodestonetp.options matches 1.. run function lodestonetp:as_player/cooldown


# Check teleporting conditions
execute unless score Enabled lodestonetp.options matches 1 run return run scoreboard players set @s lodestonetp.timer 0
execute as @s[gamemode=spectator] run return run scoreboard players set @s lodestonetp.timer 0 
execute unless predicate lodestonetp:is_sneaking run return run scoreboard players set @s lodestonetp.timer 0 


# Main
execute if predicate lodestonetp:holding_compass if items entity @s weapon.mainhand minecraft:compass[minecraft:lodestone_tracker] at @s run return run function lodestonetp:as_player/tick_sneaking
execute if score RecoveryCompass lodestonetp.options matches 1 if predicate lodestonetp:holding_recovery at @s run return run function lodestonetp:as_player/tick_sneaking
