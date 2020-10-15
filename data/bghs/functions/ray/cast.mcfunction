################################################################################
# Authors: BronGhast014
# Version: 1.16.3 +
# Copyright: October / 2020
################################################################################

scoreboard players set @s BGHS_ray 0
execute as @s at @s positioned ~ ~1.5 ~ run function bghs:ray/loop
