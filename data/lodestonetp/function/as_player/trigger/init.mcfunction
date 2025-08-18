
tellraw @s [{text: "", hover_event: {action: "show_text", value: [{text: "Click to open the project page", color: "gray"}]},click_event:{action:"open_url",url:"https://github.com/Ivaynn/LodestoneTP"}},"\n",{text: " ◆ ", color: "aqua", bold: true},{text: " LodestoneTP ", color: "dark_aqua"},{text: " ◆ ", color: "aqua", bold: true},"\n"]

scoreboard players set $holding_tracked lodestonetp.tmp 0
execute if predicate lodestonetp:holding_compass if items entity @s weapon.mainhand minecraft:compass[minecraft:lodestone_tracker] run scoreboard players set $holding_tracked lodestonetp.tmp 1

execute if score $holding_tracked lodestonetp.tmp matches 1 run function lodestonetp:as_player/trigger/selected_info
execute if score RecoveryCompass lodestonetp.options matches 1 if predicate lodestonetp:holding_recovery run function lodestonetp:as_player/trigger/recovery_info

execute if score Cooldown lodestonetp.options matches 1.. if score @s lodestonetp.cooldown matches 1.. run function lodestonetp:as_player/trigger/cooldown
execute if score Enabled lodestonetp.options matches 1 unless score Cooldown lodestonetp.options matches 1.. unless score RecoveryCompass lodestonetp.options matches 1 if score $holding_tracked lodestonetp.tmp matches 0 run tellraw @s [" ",{text: "Hold a lodestone tracked compass to start!\n", color: "gray"}]
execute if score Enabled lodestonetp.options matches 1 unless score Cooldown lodestonetp.options matches 1.. if score RecoveryCompass lodestonetp.options matches 1 if score $holding_tracked lodestonetp.tmp matches 0 unless predicate lodestonetp:holding_recovery run tellraw @s [" ",{text: "Hold a lodestone tracked compass to start!\n", color: "gray"}]
execute if score Enabled lodestonetp.options matches 1 if score Cooldown lodestonetp.options matches 1.. unless score @s lodestonetp.cooldown matches 1.. unless score RecoveryCompass lodestonetp.options matches 1 if score $holding_tracked lodestonetp.tmp matches 0 run tellraw @s [" ",{text: "Hold a lodestone tracked compass to start!\n", color: "gray"}]
execute if score Enabled lodestonetp.options matches 1 if score Cooldown lodestonetp.options matches 1.. unless score @s lodestonetp.cooldown matches 1.. if score RecoveryCompass lodestonetp.options matches 1 if score $holding_tracked lodestonetp.tmp matches 0 unless predicate lodestonetp:holding_recovery run tellraw @s [" ",{text: "Hold a lodestone tracked compass to start!\n", color: "gray"}]
execute unless score Enabled lodestonetp.options matches 1 run tellraw @s [" ",{text: "Teleporting has been disabled in the data pack options!\n", color: "gold"}]
