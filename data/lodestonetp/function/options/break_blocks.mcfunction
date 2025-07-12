
# Toggle 0/1
scoreboard players add BreakBlocks lodestonetp.options 1
execute unless score BreakBlocks lodestonetp.options matches 0..1 run scoreboard players set BreakBlocks lodestonetp.options 0


# Show updated menu
function lodestonetp:admin/options
