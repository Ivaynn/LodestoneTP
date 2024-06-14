
# Toggle 0/1
scoreboard players add CrossDimensions ltp.options 1
execute unless score CrossDimensions ltp.options matches 0..1 run scoreboard players set CrossDimensions ltp.options 0


# Show updated menu
function ltp:admin/options
