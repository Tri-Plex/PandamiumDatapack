scoreboard players set <ec_check> variable 0

execute at @a if score @s take_ec = @p id as @p run function pandamium:take/check_ec

execute at @a if score @s take_ec = @p id if score <ec_check> variable matches 1.. as @p run function pandamium:take/move_ec
execute at @a if score @s take_ec = @p id if score <ec_check> variable matches 1.. run tellraw @s [{"text":"You took ","color":"green"},{"selector":"@p"},{"text":"'s enderchest.","color":"green"}]

execute at @a if score @s take_ec = @p id if score <ec_check> variable matches 0 run tellraw @s [{"selector":"@p"},{"text":"'s enderchest is empty.","color":"red"}]

scoreboard players reset @s take_ec
scoreboard players enable @s take_ec
