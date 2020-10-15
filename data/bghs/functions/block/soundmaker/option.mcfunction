################################################################################
# Authors: BronGhast014
# Version: 1.16.3 +
# Copyright: October / 2020
################################################################################

scoreboard players add @s BGHS_option 1
scoreboard players set @s[scores={BGHS_option=5..}] BGHS_option 0

execute at @s[scores={BGHS_option=0}] run setblock ~ ~ ~ cobweb
execute at @s[scores={BGHS_option=1}] run setblock ~ ~ ~ pumpkin
execute at @s[scores={BGHS_option=2}] run setblock ~ ~ ~ dirt
execute at @s[scores={BGHS_option=3}] run setblock ~ ~ ~ stone
execute at @s[scores={BGHS_option=4}] run setblock ~ ~ ~ skeleton_skull
