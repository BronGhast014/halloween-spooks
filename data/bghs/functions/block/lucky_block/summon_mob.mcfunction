################################################################################
# Authors: BronGhast014
# Version: 1.16.3 +
# Copyright: October / 2020
################################################################################

execute at @s run particle poof ~ ~ ~ 0.1 0.5 0.1 0 15
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{spawngolem:1}}}] run summon snow_golem ~ ~ ~
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{spawngolem:2}}}] run summon iron_golem ~ ~ ~
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{spawnwolf:1}}}] run summon wolf ~1 ~ ~1
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{spawnwolf:1}}}] run summon wolf ~2 ~ ~
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{spawnwolf:1}}}] run summon wolf ~ ~ ~-1
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{spawnhorse:1}}}] run summon horse ~ ~ ~
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{spawnhorse:1}}}] run summon item ~ ~ ~ {Item:{id:"minecraft:saddle",Count:1b}}

execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{spawnzombie:1}}}] run summon zombie ~ ~ ~1
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{spawnzombie:1}}}] run summon zombie ~ ~ ~-1
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{spawnzombie:1}}}] run summon zombie ~1 ~ ~
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{spawnzombie:1}}}] run summon zombie ~-1 ~ ~
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{spawnskeleton:1}}}] run summon skeleton ~ ~ ~1
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{spawnskeleton:1}}}] run summon skeleton ~ ~ ~-1
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{spawnskeleton:1}}}] run summon skeleton ~1 ~ ~
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{spawnskeleton:1}}}] run summon skeleton ~-1 ~ ~
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{spawnskeleton:2}}}] run summon wither_skeleton ~ ~ ~1
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{spawnskeleton:2}}}] run summon wither_skeleton ~ ~ ~-1
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{spawnskeleton:2}}}] run summon wither_skeleton ~1 ~ ~
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{spawnskeleton:2}}}] run summon wither_skeleton ~-1 ~ ~
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{spawnwither:1}}}] run summon wither ~ ~ ~
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{spawnghast:1}}}] run summon ghast ~ ~ ~
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{spawnravager:1}}}] run summon ravager ~ ~ ~
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{spawnslime:1}}}] run summon slime ~ ~ ~ {Size:10}

kill @s
