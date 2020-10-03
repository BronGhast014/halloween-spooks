####################################################
# Copyright BronGhast014
# 1.14.4
# https://www.youtube.com/c/BronGhast014
####################################################

scoreboard players add @s[scores={SPP_timer=1..}] SPP_timer 1
scoreboard players set @s[scores={SPP_timer=200}] SPP_timer 0

execute at @s[scores={SPP_timer=0}] if entity @p[distance=..10] run scoreboard players set @s SPP_timer 1
execute at @s[scores={SPP_timer=2}] run playsound minecraft:ambient.cave ambient @a ~ ~ ~

execute at @s if block ~ ~ ~ air run summon item ~ ~ ~ {Item:{id:"minecraft:armor_stand",Count:1b,tag:{display:{Name:'{"translate":"bgsdp.soundmaker"}'},HideFlags:32,CustomModelData:10140001,EntityTag:{Small:1b,Invisible:1b,Tags:["spawn_sound_maker"]}}}}
execute at @s if block ~ ~ ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:dirt"}},distance=..0.8,limit=1]
execute at @s if block ~ ~ ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:string"}},distance=..0.8,limit=4]
execute at @s if block ~ ~ ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:cobblestone"}},distance=..0.8,limit=1]
execute at @s if block ~ ~ ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:pumpkin"}},distance=..0.8,limit=1]
execute at @s if block ~ ~ ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:skeleton_skull"}},distance=..0.8,limit=1]
execute at @s if block ~ ~ ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:stone"}},distance=..0.8,limit=1]
execute at @s if block ~ ~ ~ air run kill @s
