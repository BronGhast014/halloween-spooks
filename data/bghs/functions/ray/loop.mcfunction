################################################################################
# Authors: BronGhast014
# Version: 1.16.3 +
# Copyright: October / 2020
################################################################################

scoreboard players add @s SPP_ray 1

execute unless block ~ ~ ~ #bghs:void run scoreboard players set @s SPP_ray 2222

execute as @s[scores={SPP_ray=2222..}] positioned ^ ^ ^ align xyz positioned ~0.5 ~ ~0.5 run function bghs:ray/hit
execute as @s[scores={SPP_ray=..1111}] positioned ^ ^ ^0.5 run function bghs:ray/loop
