# Request timer
execute as @a[scores={tpa_request=1..,deny_timer=0}] at @a if score @s tpa_request = @p id run tellraw @s [{"text":"[TPA]","color":"dark_blue"},{"text":" Your tpa request from ","color":"green"},{"selector":"@p"},{"text":" expired","color":"aqua"},{"text":"!","color":"green"}]
execute as @a[scores={tpa_request=1..,deny_timer=0}] at @a if score @s tpa_request = @p id run tellraw @p [{"text":"[TPA]","color":"dark_blue"},{"text":" Your tpa request to ","color":"green"},{"selector":"@s"},{"text":" expired","color":"aqua"},{"text":"!","color":"green"}]
scoreboard players set @a[scores={tpa_request=1..,deny_timer=0}] tpa_request 0
