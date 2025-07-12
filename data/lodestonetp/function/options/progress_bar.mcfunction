
# Toggle 0/1
scoreboard players add ProgressBar lodestonetp.options 1
execute unless score ProgressBar lodestonetp.options matches 0..1 run scoreboard players set ProgressBar lodestonetp.options 0


# Show updated menu
function lodestonetp:admin/options
