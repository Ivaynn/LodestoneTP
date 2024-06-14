
# Toggle 0/1
scoreboard players add BreakCompass ltp.options 1
execute unless score BreakCompass ltp.options matches 0..1 run scoreboard players set BreakCompass ltp.options 0


# Show updated menu
function ltp:admin/options
