################################################################################
# Authors: BronGhast014
# Version: 1.16.3 +
# Copyright: October / 2020
################################################################################

particle flame ~ ~ ~ 0.5 0 0.5 0 10 force
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 1 2
playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 0.1
execute as @e[type=armor_stand,sort=nearest,distance=..20,tag=ghost] run scoreboard players set @s BGHS_timer 1
execute as @e[type=minecraft:armor_stand,tag=gtrigger,scores={BGHS_timer=0..2}] at @s if entity @p[distance=..2] run scoreboard players set @s BGHS_timer 1
