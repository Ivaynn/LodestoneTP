
execute if score @s lodestonetp.cooldown matches 1.. run scoreboard players remove @s lodestonetp.cooldown 1
execute if score @s lodestonetp.cooldown matches ..-1 run scoreboard players set @s lodestonetp.cooldown 0
execute if score @s lodestonetp.cooldown > Cooldown lodestonetp.options run scoreboard players operation @s lodestonetp.cooldown = Cooldown lodestonetp.options
