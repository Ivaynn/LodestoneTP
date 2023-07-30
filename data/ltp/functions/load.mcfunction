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
execute unless score Enabled ltp.options matches 0..1 run scoreboard players set Enabled ltp.options 1
execute unless score OnLodestone ltp.options matches 0..1 run scoreboard players set OnLodestone ltp.options 0
execute unless score Cooldown ltp.options matches 0.. run scoreboard players set Cooldown ltp.options 1200
execute unless score MovingCancel ltp.options matches 0..1 run scoreboard players set MovingCancel ltp.options 0
execute unless score DamageCancel ltp.options matches 0..1 run scoreboard players set DamageCancel ltp.options 1
execute unless score GiveResistance ltp.options matches 0..1 run scoreboard players set GiveResistance ltp.options 1
execute unless score BreakBlocks ltp.options matches 0..1 run scoreboard players set BreakBlocks ltp.options 1
execute unless score CrossDimensions ltp.options matches 0..1 run scoreboard players set CrossDimensions ltp.options 1
execute unless score ProgressBar ltp.options matches 0..1 run scoreboard players set ProgressBar ltp.options 1
execute unless score SneakTime ltp.options matches 0.. run scoreboard players set SneakTime ltp.options 100
