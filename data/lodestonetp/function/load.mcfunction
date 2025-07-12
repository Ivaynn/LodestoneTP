schedule function lodestonetp:main 1t replace

scoreboard objectives add LodestoneTP trigger
scoreboard objectives add lodestonetp.timer dummy
scoreboard objectives add lodestonetp.tmp dummy

scoreboard objectives add lodestonetp.cooldown dummy
scoreboard objectives add lodestonetp.x dummy
scoreboard objectives add lodestonetp.y dummy
scoreboard objectives add lodestonetp.z dummy

scoreboard objectives add lodestonetp.math dummy
scoreboard players set #2 lodestonetp.math 2
scoreboard players set #10 lodestonetp.math 10
scoreboard players set #20 lodestonetp.math 20
scoreboard players set #60 lodestonetp.math 60


scoreboard objectives add lodestonetp.options dummy
function lodestonetp:options/update
