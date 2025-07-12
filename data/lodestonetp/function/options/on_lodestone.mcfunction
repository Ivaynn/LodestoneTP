
# Toggle 0/1
scoreboard players add OnLodestone lodestonetp.options 1
execute unless score OnLodestone lodestonetp.options matches 0..1 run scoreboard players set OnLodestone lodestonetp.options 0


# Show updated menu
function lodestonetp:admin/options
