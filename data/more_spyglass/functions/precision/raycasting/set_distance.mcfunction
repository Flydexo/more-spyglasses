scoreboard players operation @s last_distance = @s distance
scoreboard players remove @s last_distance 2
execute if entity @e[dx=0,type=!player,type=!item_frame,type=!item] positioned ~-0.99 ~-0.99 ~-0.99 unless entity @e[dx=0,type=!player,type=!item_frame,type=!item] positioned ~0.99 ~0.99 ~0.99 run scoreboard players add @s last_distance 1
title @s times 1 2 2
title @s title [{"score":{"name":"@s","objective":"last_distance"}}]
scoreboard players set @s distance 0