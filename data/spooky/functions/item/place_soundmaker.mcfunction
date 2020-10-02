####################################################
# Copyright BronGhast014
# 1.14.4
# https://www.youtube.com/c/BronGhast014
####################################################

summon armor_stand ~ ~ ~ {Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["sound_maker","newsound"]}
scoreboard players set @e[tag=newsound] SPP_timer 0
tag @e[tag=newsound] remove newsound
setblock ~ ~ ~ cobweb
kill @s
