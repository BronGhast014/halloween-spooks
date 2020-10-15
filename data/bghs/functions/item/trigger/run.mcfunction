################################################################################
# Authors: BronGhast014
# Version: 1.16.3 +
# Copyright: October / 2020
################################################################################

execute at @s if block ~ ~-1 ~ air run loot spawn ~ ~0.2 ~ loot bghs:item/trigger
execute at @s if block ~ ~-1 ~ air run kill @s

scoreboard players add @s[scores={BGHS_timer=1..}] BGHS_timer 1
scoreboard players set @s[scores={BGHS_timer=100..}] BGHS_timer 0
