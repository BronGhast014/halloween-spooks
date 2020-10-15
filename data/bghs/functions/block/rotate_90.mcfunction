################################################################################
# Authors: BronGhast014
# Version: 1.16.3 +
# Copyright: October / 2020
################################################################################

scoreboard players add @s BGHS_option 1
scoreboard players set @s[scores={BGHS_option=4..}] BGHS_option 0

data merge entity @s[scores={BGHS_option=0}] {Rotation:[0F,0F]}
data merge entity @s[scores={BGHS_option=1}] {Rotation:[90F,0F]}
data merge entity @s[scores={BGHS_option=2}] {Rotation:[180F,0F]}
data merge entity @s[scores={BGHS_option=3}] {Rotation:[270F,0F]}
