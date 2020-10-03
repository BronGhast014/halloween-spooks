################################################################################
# Authors: BronGhast014
# Version: 1.16.3 +
# Copyright: October / 2020
# Description: gets the @s's rotation and translates in into a 4 axis score
################################################################################

#south
scoreboard players set @s[y_rotation=-11..46] SPP_direction 1
#west
scoreboard players set @s[y_rotation=47..136] SPP_direction 2
#north
scoreboard players set @s[y_rotation=137..-136] SPP_direction 3
#east
scoreboard players set @s[y_rotation=-135..-46] SPP_direction 4
#south
scoreboard players set @s[y_rotation=-45..-12] SPP_direction 1
