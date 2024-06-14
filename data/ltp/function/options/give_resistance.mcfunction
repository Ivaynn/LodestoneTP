
# Toggle 0/1
scoreboard players add GiveResistance ltp.options 1
execute unless score GiveResistance ltp.options matches 0..1 run scoreboard players set GiveResistance ltp.options 0


# Show updated menu
function ltp:admin/options
