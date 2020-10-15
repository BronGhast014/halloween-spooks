################################################################################
# Authors: BronGhast014
# Version: 1.16.3 +
# Copyright: October / 2020
################################################################################

execute unless entity @s[scores={BGHS_option=0,BGHS_timer=1..}] at @s if block ~ ~-0.6 ~ air run loot spawn ~ ~0.2 ~ loot bghs:item/ghost
execute unless entity @s[scores={BGHS_option=0,BGHS_timer=1..}] at @s if block ~ ~-0.6 ~ air run kill @s

scoreboard players add @s[scores={BGHS_timer=1..}] BGHS_timer 1
scoreboard players set @s[scores={BGHS_timer=102}] BGHS_timer 0

tp @s[scores={BGHS_option=1,BGHS_timer=1..100}] ^ ^ ^0.1
tp @s[scores={BGHS_option=1,BGHS_timer=101}] ^ ^ ^-9.9

tp @s[scores={BGHS_option=0,BGHS_timer=1..100}] ^ ^0.1 ^
tp @s[scores={BGHS_option=0,BGHS_timer=101}] ^ ^-9.9 ^

execute at @s[scores={BGHS_option=2,BGHS_timer=2}] run summon armor_stand ~ ~ ~ {Small:1b,Marker:1b,Invisible:1b,Tags:["gspt"]}
execute as @s[scores={BGHS_option=2,BGHS_timer=2}] at @p positioned ^ ^ ^3 run tp @s ~ ~ ~ 0 0
execute as @s[scores={BGHS_option=2,BGHS_timer=2}] at @p positioned ^ ^ ^3 run particle poof ~ ~ ~ 0.4 0.4 0.4 0.1 15
execute as @s at @s run tp @s[scores={BGHS_option=2,BGHS_timer=2}] ~ ~ ~ facing entity @p[sort=nearest] feet
tp @s[scores={BGHS_option=2..3,BGHS_timer=101}] @e[sort=nearest,limit=1,tag=gspt]
execute at @s[scores={BGHS_option=2,BGHS_timer=101}] run kill @e[sort=nearest,limit=1,tag=gspt]

tp @s[scores={BGHS_option=3,BGHS_timer=2}] ~ ~ ~ facing entity @p[sort=nearest] feet
tp @s[scores={BGHS_option=3,BGHS_timer=1..100}] ^ ^ ^0.1
tp @s[scores={BGHS_option=3,BGHS_timer=101}] ^ ^ ^-9.9
