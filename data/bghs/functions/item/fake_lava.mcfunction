####################################################
# Copyright BronGhast014
# 1.14.4
# https://www.youtube.com/c/BronGhast014
####################################################

scoreboard players add @s SPP_timer 1
scoreboard players set @s[scores={SPP_timer=161}] SPP_timer 0
execute at @s[scores={SPP_timer=3}] run playsound minecraft:block.lava.ambient block @a ~ ~ ~

setblock ~ ~ ~ minecraft:sea_pickle[pickles=4,waterlogged=true]
kill @e[type=item,distance=..0.9,nbt={Item:{id:"minecraft:sea_pickle"}}]
execute at @s[scores={SPP_timer=30}] run particle minecraft:lava ~ ~ ~ 0.3 0.3 0.3 0 1
execute at @s[scores={SPP_timer=100}] run particle minecraft:lava ~ ~ ~ 0.3 0.3 0.3 0 1
execute at @s[scores={SPP_timer=3}] run data merge entity @s {Rotation:[90F,0F]}
