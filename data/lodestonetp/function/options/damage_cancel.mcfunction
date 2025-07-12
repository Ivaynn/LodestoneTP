
# Toggle 0/1
scoreboard players add DamageCancel lodestonetp.options 1
execute unless score DamageCancel lodestonetp.options matches 0..1 run scoreboard players set DamageCancel lodestonetp.options 0


# Show updated menu
function lodestonetp:admin/options
