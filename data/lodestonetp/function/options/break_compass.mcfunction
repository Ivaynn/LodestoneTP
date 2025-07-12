
# Toggle 0/1
scoreboard players add BreakCompass lodestonetp.options 1
execute unless score BreakCompass lodestonetp.options matches 0..1 run scoreboard players set BreakCompass lodestonetp.options 0


# Show updated menu
function lodestonetp:admin/options
