##############################################################################################################
# Author: BronGhast014
# Date: 10/5/18
# Description: gets the executer's rotation and translates in into a 4 axis score
##############################################################################################################

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
