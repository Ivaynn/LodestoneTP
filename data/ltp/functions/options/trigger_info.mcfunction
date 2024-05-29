
# Toggle 0/1
scoreboard players add TriggerInfo ltp.options 1
execute unless score TriggerInfo ltp.options matches 0..1 run scoreboard players set TriggerInfo ltp.options 0


# Show updated menu
function ltp:admin/options
