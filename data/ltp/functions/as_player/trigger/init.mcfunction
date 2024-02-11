
tellraw @s [{"text":"","hoverEvent":{"action":"show_text","contents":[{"text":"Data pack made by Ivaynn","color":"gray"}]}},"\n",{"text":" ◆ ","color":"aqua","bold":true},{"text":" LodestoneTP ","color":"dark_aqua"},{"text":" ◆ ","color":"aqua","bold":true},"\n"]

execute if predicate ltp:holding_tracked run function ltp:as_player/trigger/selected_info
execute if score RecoveryCompass ltp.options matches 1 if predicate ltp:holding_recovery run function ltp:as_player/trigger/recovery_info

execute if score Cooldown ltp.options matches 1.. if score @s ltp.cooldown matches 1.. run function ltp:as_player/trigger/cooldown
execute if score Enabled ltp.options matches 1 unless score Cooldown ltp.options matches 1.. unless score RecoveryCompass ltp.options matches 1 unless predicate ltp:holding_tracked run tellraw @s [" ",{"text":"Hold a lodestone tracked compass to start!\n","color":"gray"}]
execute if score Enabled ltp.options matches 1 unless score Cooldown ltp.options matches 1.. if score RecoveryCompass ltp.options matches 1 unless predicate ltp:holding_tracked unless predicate ltp:holding_recovery run tellraw @s [" ",{"text":"Hold a lodestone tracked compass to start!\n","color":"gray"}]
execute if score Enabled ltp.options matches 1 if score Cooldown ltp.options matches 1.. unless score @s ltp.cooldown matches 1.. unless score RecoveryCompass ltp.options matches 1 unless predicate ltp:holding_tracked run tellraw @s [" ",{"text":"Hold a lodestone tracked compass to start!\n","color":"gray"}]
execute if score Enabled ltp.options matches 1 if score Cooldown ltp.options matches 1.. unless score @s ltp.cooldown matches 1.. if score RecoveryCompass ltp.options matches 1 unless predicate ltp:holding_tracked unless predicate ltp:holding_recovery run tellraw @s [" ",{"text":"Hold a lodestone tracked compass to start!\n","color":"gray"}]
execute unless score Enabled ltp.options matches 1 run tellraw @s [" ",{"text":"Teleporting has been disabled in the data pack options!\n","color":"gold"}]
