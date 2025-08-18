tellraw @a ["",{text: "> Uninstalled!"}]
schedule clear lodestonetp:main

scoreboard objectives remove LodestoneTP
scoreboard objectives remove lodestonetp.timer
scoreboard objectives remove lodestonetp.tmp

scoreboard objectives remove lodestonetp.cooldown
scoreboard objectives remove lodestonetp.x
scoreboard objectives remove lodestonetp.y
scoreboard objectives remove lodestonetp.z

scoreboard objectives remove lodestonetp.math
scoreboard objectives remove lodestonetp.options

data remove storage lodestonetp:tmp tmp
data remove storage lodestonetp:item_cost item
