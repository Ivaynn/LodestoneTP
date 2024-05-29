schedule function ltp:main 1t replace

scoreboard objectives add LodestoneTP trigger
scoreboard objectives add ltp.timer dummy
scoreboard objectives add ltp.tmp dummy

scoreboard objectives add ltp.cooldown dummy
scoreboard objectives add ltp.x dummy
scoreboard objectives add ltp.y dummy
scoreboard objectives add ltp.z dummy

scoreboard objectives add ltp.math dummy
scoreboard players set #2 ltp.math 2
scoreboard players set #10 ltp.math 10
scoreboard players set #20 ltp.math 20
scoreboard players set #60 ltp.math 60


scoreboard objectives add ltp.options dummy
function ltp:options/update
