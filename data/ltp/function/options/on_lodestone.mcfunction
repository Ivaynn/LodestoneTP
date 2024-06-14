
# Toggle 0/1
scoreboard players add OnLodestone ltp.options 1
execute unless score OnLodestone ltp.options matches 0..1 run scoreboard players set OnLodestone ltp.options 0


# Show updated menu
function ltp:admin/options
