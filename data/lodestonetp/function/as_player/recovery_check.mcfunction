# This is executed in the first tick of the teleport animation when using a recovery compass

execute store result score $rec_y lodestonetp.tmp run data get entity @s LastDeathLocation.pos[1]


# These are the vanilla lower build limits, but they can be modified by other data packs or mods
# For this reason, players are allowed to teleport outside of the limits, but will be warned
# If the teleport delay (SneakTime option) is too short, players may not have enough time to react
scoreboard players set $rec_warning lodestonetp.tmp 0
execute if data entity @s {LastDeathLocation:{dimension:"minecraft:overworld"}} if score $rec_y lodestonetp.tmp matches ..-64 run scoreboard players set $rec_warning lodestonetp.tmp 1
execute if data entity @s {LastDeathLocation:{dimension:"minecraft:the_nether"}} if score $rec_y lodestonetp.tmp matches ..0 run scoreboard players set $rec_warning lodestonetp.tmp 1
execute if data entity @s {LastDeathLocation:{dimension:"minecraft:the_end"}} if score $rec_y lodestonetp.tmp matches ..0 run scoreboard players set $rec_warning lodestonetp.tmp 1


# Warning message
execute if score $rec_warning lodestonetp.tmp matches 1 run tellraw @s ["",{text: "LodestoneTP > ", color: "dark_aqua"},{text: "WARNING - This may teleport you to the void!", color: "gold"}]


# Clear tmp
scoreboard players reset $rec_y lodestonetp.tmp
scoreboard players reset $rec_warning lodestonetp.tmp
