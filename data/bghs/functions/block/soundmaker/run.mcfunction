################################################################################
# Authors: BronGhast014
# Version: 1.16.3 +
# Copyright: October / 2020
################################################################################

scoreboard players add @s[scores={BGHS_timer=1..}] BGHS_timer 1
scoreboard players set @s[scores={BGHS_timer=200}] BGHS_timer 0

execute at @s[scores={BGHS_timer=0}] if entity @p[distance=..10] run scoreboard players set @s BGHS_timer 1
execute at @s[scores={BGHS_timer=2}] run playsound minecraft:ambient.cave ambient @a ~ ~ ~

execute at @s if block ~ ~ ~ air run loot spawn ~ ~0.2 ~ loot bghs:item/soundmaker
execute at @s[scores={BGHS_option=2}] if block ~ ~ ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:dirt"}},distance=..0.8,limit=1]
execute at @s[scores={BGHS_option=0}] if block ~ ~ ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:string"}},distance=..0.8,limit=4]
execute at @s[scores={BGHS_option=0}] if block ~ ~ ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:cobweb"}},distance=..0.8,limit=4]
execute at @s[scores={BGHS_option=3}] if block ~ ~ ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:cobblestone"}},distance=..0.8,limit=1]
execute at @s[scores={BGHS_option=1}] if block ~ ~ ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:pumpkin"}},distance=..0.8,limit=1]
execute at @s[scores={BGHS_option=4}] if block ~ ~ ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:skeleton_skull"}},distance=..0.8,limit=1]
execute at @s[scores={BGHS_option=3}] if block ~ ~ ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:stone"}},distance=..0.8,limit=1]
execute at @s if block ~ ~ ~ air run kill @s
