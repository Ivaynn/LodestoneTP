
execute if score @s ltp.cooldown matches 1.. run scoreboard players remove @s ltp.cooldown 1
execute if score @s ltp.cooldown matches ..-1 run scoreboard players set @s ltp.cooldown 0
execute if score @s ltp.cooldown > Cooldown ltp.options run scoreboard players operation @s ltp.cooldown = Cooldown ltp.options
