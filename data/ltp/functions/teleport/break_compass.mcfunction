
execute if predicate ltp:holding_tracked run item modify entity @s weapon ltp:remove_one
execute at @s anchored eyes run particle minecraft:item minecraft:compass ^ ^ ^0.5 0 0 0 0.05 2
execute at @s run playsound minecraft:entity.item.break player @a ~ ~ ~ 0.75 1.5
