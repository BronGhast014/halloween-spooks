################################################################################
# Authors: BronGhast014
# Version: 1.16.3 +
# Copyright: October / 2020
################################################################################

# particle minecraft:flame ~ ~1 ~ 0 0 0 0 5 force

execute as @e[type=armor_stand,tag=sound_maker,distance=..0.1] run function bghs:block/soundmaker/option

execute positioned ~ ~1 ~ as @e[type=armor_stand,tag=ghost,distance=..0.1] run function bghs:item/ghost/option

execute as @e[type=armor_stand,tag=spooky_pumpkin,distance=..0.1] run function bghs:block/rotate_90
execute positioned ~ ~1 ~ as @e[type=armor_stand,tag=frame,distance=..0.1] run function bghs:block/rotate_90

execute positioned ~ ~1 ~ as @e[type=armor_stand,tag=fake_lava,distance=..0.1] at @s run function bghs:block/lava/remove
