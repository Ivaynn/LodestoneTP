
# Toggle 0/1
scoreboard players add Enabled ltp.options 1
execute unless score Enabled ltp.options matches 0..1 run scoreboard players set Enabled ltp.options 0


# Show updated menu
function ltp:admin/options
