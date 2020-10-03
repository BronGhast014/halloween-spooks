################################################################################
# Authors: BronGhast014
# Version: 1.16.3 +
# Copyright: October / 2020
################################################################################

scoreboard players add @s BGHS_timer 1
scoreboard players set @s[scores={BGHS_timer=161}] BGHS_timer 0
execute at @s[scores={BGHS_timer=3}] run playsound minecraft:block.lava.ambient block @a ~ ~ ~

setblock ~ ~ ~ minecraft:sea_pickle[pickles=4,waterlogged=true]
kill @e[type=item,distance=..0.9,nbt={Item:{id:"minecraft:sea_pickle"}}]
execute at @s[scores={BGHS_timer=30}] run particle minecraft:lava ~ ~ ~ 0.3 0.3 0.3 0 1
execute at @s[scores={BGHS_timer=100}] run particle minecraft:lava ~ ~ ~ 0.3 0.3 0.3 0 1
execute at @s[scores={BGHS_timer=3}] run data merge entity @s {Rotation:[90F,0F]}
