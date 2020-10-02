####################################################
# Copyright BronGhast014
# 1.14.4
# https://www.youtube.com/c/BronGhast014
####################################################

scoreboard players add @s[scores={SPP_timer=1..}] SPP_timer 1
scoreboard players set @s[scores={SPP_timer=102}] SPP_timer 0

tp @s[scores={SPP_option=0,SPP_timer=1..100}] ^ ^ ^0.1
tp @s[scores={SPP_option=0,SPP_timer=101}] ^ ^ ^-9.9

tp @s[scores={SPP_option=1,SPP_timer=1..100}] ^ ^0.1 ^
tp @s[scores={SPP_option=1,SPP_timer=101}] ^ ^-9.9 ^

execute at @s[scores={SPP_option=2,SPP_timer=2}] run summon armor_stand ~ ~ ~ {Small:1b,Marker:1b,Invisible:1b,Tags:["gspt"]}
execute as @s[scores={SPP_option=2,SPP_timer=2}] at @p positioned ^ ^ ^3 run tp @s ~ ~ ~ 0 0
execute as @s[scores={SPP_option=2,SPP_timer=2}] at @p positioned ^ ^ ^3 run particle poof ~ ~ ~ 0.4 0.4 0.4 0.1 15
execute as @s at @s run tp @s[scores={SPP_option=2,SPP_timer=2}] ~ ~ ~ facing entity @p[sort=nearest] feet
tp @s[scores={SPP_option=2..3,SPP_timer=101}] @e[sort=nearest,limit=1,tag=gspt]
execute at @s[scores={SPP_option=2,SPP_timer=101}] run kill @e[sort=nearest,limit=1,tag=gspt]

tp @s[scores={SPP_option=3,SPP_timer=2}] ~ ~ ~ facing entity @p[sort=nearest] feet
tp @s[scores={SPP_option=3,SPP_timer=1..100}] ^ ^ ^0.1
tp @s[scores={SPP_option=3,SPP_timer=101}] ^ ^ ^-9.9
