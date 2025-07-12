
# Toggle 0/1
scoreboard players add TriggerInfo lodestonetp.options 1
execute unless score TriggerInfo lodestonetp.options matches 0..1 run scoreboard players set TriggerInfo lodestonetp.options 0


# Show updated menu
function lodestonetp:admin/options
