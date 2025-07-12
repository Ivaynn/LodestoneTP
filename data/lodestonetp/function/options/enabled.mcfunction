
# Toggle 0/1
scoreboard players add Enabled lodestonetp.options 1
execute unless score Enabled lodestonetp.options matches 0..1 run scoreboard players set Enabled lodestonetp.options 0


# Show updated menu
function lodestonetp:admin/options
