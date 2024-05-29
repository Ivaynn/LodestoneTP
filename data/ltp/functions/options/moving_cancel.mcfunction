
# Toggle 0/1
scoreboard players add MovingCancel ltp.options 1
execute unless score MovingCancel ltp.options matches 0..1 run scoreboard players set MovingCancel ltp.options 0


# Show updated menu
function ltp:admin/options
