
# Toggle 0/1
scoreboard players add DamageCancel ltp.options 1
execute unless score DamageCancel ltp.options matches 0..1 run scoreboard players set DamageCancel ltp.options 0


# Show updated menu
function ltp:admin/options
