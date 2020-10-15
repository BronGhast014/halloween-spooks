################################################################################
# Authors: BronGhast014
# Version: 1.16.3 +
# Copyright: October / 2020
################################################################################

execute at @s run particle poof ~ ~ ~ 0.1 0.5 0.1 0 15
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{kill:1}}}] run kill @e[type=minecraft:experience_orb,distance=..0.4]

execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{fakeZombie:1}}}] run loot spawn ~ ~0.2 ~ loot bghs:item/zombie
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{fakeSkeleton:1}}}] run loot spawn ~ ~0.2 ~ loot bghs:item/skeleton
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{fakeCreeper:1}}}] run loot spawn ~ ~0.2 ~ loot bghs:item/creeper
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{fakeWitch:1}}}] run loot spawn ~ ~0.2 ~ loot bghs:item/witch
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{fakeSpider:1}}}] run loot spawn ~ ~0.2 ~ loot bghs:item/spider
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{fakeCat:1}}}] run loot spawn ~ ~0.2 ~ loot bghs:item/cat

kill @s
