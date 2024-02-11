tellraw @a ["",{"text":"> Uninstalled!"}]
schedule clear ltp:main

scoreboard objectives remove LodestoneTP
scoreboard objectives remove ltp.timer
scoreboard objectives remove ltp.tmp

scoreboard objectives remove ltp.cooldown
scoreboard objectives remove ltp.x
scoreboard objectives remove ltp.y
scoreboard objectives remove ltp.z

scoreboard objectives remove ltp.math
scoreboard objectives remove ltp.options

data remove storage ltp:ltp tmp
