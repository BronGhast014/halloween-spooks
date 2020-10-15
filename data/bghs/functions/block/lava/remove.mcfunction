################################################################################
# Authors: BronGhast014
# Version: 1.16.3 +
# Copyright: October / 2020
################################################################################

stopsound @a block minecraft:block.lava.ambient
setblock ~ ~ ~ sponge
setblock ~ ~ ~ air
loot spawn ~ ~0.2 ~ loot bghs:item/lava
kill @s
