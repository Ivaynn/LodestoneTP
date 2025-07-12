
# Toggle 0/1
scoreboard players add RecoveryCompass lodestonetp.options 1
execute unless score RecoveryCompass lodestonetp.options matches 0..1 run scoreboard players set RecoveryCompass lodestonetp.options 0


# Show updated menu
function lodestonetp:admin/options
