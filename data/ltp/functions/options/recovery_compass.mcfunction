
# Toggle 0/1
scoreboard players add RecoveryCompass ltp.options 1
execute unless score RecoveryCompass ltp.options matches 0..1 run scoreboard players set RecoveryCompass ltp.options 0


# Show updated menu
function ltp:admin/options
