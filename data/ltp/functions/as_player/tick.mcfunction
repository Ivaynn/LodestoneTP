# Executed every tick, by every player


# Trigger
scoreboard players enable @s LodestoneTP
execute if score @s LodestoneTP matches 1.. run function ltp:as_player/trigger/init
scoreboard players set @s LodestoneTP 0


# Cooldown
execute if score Cooldown ltp.options matches 1.. run function ltp:as_player/cooldown


# Main
scoreboard players set $sneaking ltp.tmp 0
execute if score Enabled ltp.options matches 1 if predicate ltp:is_sneaking if predicate ltp:holding_tracked as @s[gamemode=!spectator] run scoreboard players set $sneaking ltp.tmp 1
execute if score $sneaking ltp.tmp matches 1 at @s run function ltp:as_player/tick_sneaking
execute if score $sneaking ltp.tmp matches 0 run scoreboard players set @s ltp.timer 0
scoreboard players reset $sneaking ltp.tmp
