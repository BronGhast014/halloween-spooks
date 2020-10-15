################################################################################
# Authors: BronGhast014
# Version: 1.16.3 +
# Copyright: October / 2020
################################################################################

summon armor_stand ~ ~ ~ {Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["sound_maker","newsound"]}
scoreboard players set @e[tag=newsound] BGHS_timer 0
tag @e[tag=newsound] remove newsound
setblock ~ ~ ~ cobweb
kill @s
