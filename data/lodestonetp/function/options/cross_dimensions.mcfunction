
# Toggle 0/1
scoreboard players add CrossDimensions lodestonetp.options 1
execute unless score CrossDimensions lodestonetp.options matches 0..1 run scoreboard players set CrossDimensions lodestonetp.options 0


# Show updated menu
function lodestonetp:admin/options
