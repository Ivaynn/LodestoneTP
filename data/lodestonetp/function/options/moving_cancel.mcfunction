
# Toggle 0/1
scoreboard players add MovingCancel lodestonetp.options 1
execute unless score MovingCancel lodestonetp.options matches 0..1 run scoreboard players set MovingCancel lodestonetp.options 0


# Show updated menu
function lodestonetp:admin/options
