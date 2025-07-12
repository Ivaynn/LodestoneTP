
# Toggle 0/1
scoreboard players add GiveResistance lodestonetp.options 1
execute unless score GiveResistance lodestonetp.options matches 0..1 run scoreboard players set GiveResistance lodestonetp.options 0


# Show updated menu
function lodestonetp:admin/options
