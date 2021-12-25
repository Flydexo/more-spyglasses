scoreboard players add @s distance 1
# execute if entity @e[dx=0,type=!player] run function more_spyglass:precision/raycasting/set_distance
execute if entity @e[dx=0,type=!player,type=!item_frame,type=!item] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[dx=0,type=!player,type=!item_frame,type=!item] positioned ~0.99 ~0.99 ~0.99 run function more_spyglass:precision/raycasting/set_distance
execute if entity @e[dx=0,type=!player,type=!item_frame,type=!item] positioned ~-0.99 ~-0.99 ~-0.99 unless entity @e[dx=0,type=!player,type=!item_frame,type=!item] positioned ~0.99 ~0.99 ~0.99 run function more_spyglass:precision/raycasting/set_distance
execute unless block ~ ~ ~ minecraft:air run function more_spyglass:precision/raycasting/set_distance
execute if block ~ ~ ~ minecraft:air unless entity @e[dx=0,type=!player,type=!item_frame,type=!item] positioned ^ ^ ^1 run function more_spyglass:precision/raycasting/get_distance