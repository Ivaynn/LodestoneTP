
# Toggle 0/1
scoreboard players add ProgressBar ltp.options 1
execute unless score ProgressBar ltp.options matches 0..1 run scoreboard players set ProgressBar ltp.options 0


# Show updated menu
function ltp:admin/options
