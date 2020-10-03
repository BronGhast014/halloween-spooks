################################################################################
# Authors: BronGhast014
# Version: 1.16.3 +
# Copyright: October / 2020
################################################################################


execute at @s if entity @p[distance=..4] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:10140202}}]}
execute at @s if entity @p[distance=..4] run setblock ~ ~ ~ barrier
execute at @s if entity @p[distance=..4] run scoreboard players add @s SPP_timer 1
execute at @s unless entity @p[distance=..4] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:10140201}}]}
execute at @s[scores={SPP_timer=1..}] unless entity @p[distance=..4] run setblock ~ ~ ~ orange_stained_glass
execute at @s unless entity @p[distance=..4] run scoreboard players set @s SPP_timer 0

execute at @s[scores={SPP_timer=1}] run playsound minecraft:entity.skeleton_horse.ambient master @a ~ ~ ~ 1 0.1
execute at @s[scores={SPP_timer=1}] run playsound minecraft:entity.wolf.howl master @a ~ ~ ~ 1 2
