################################################################################
# Authors: BronGhast014
# Version: 1.16.3 +
# Copyright: October / 2020
################################################################################

execute as @e[tag=spooky_pumpkin] at @s if block ~ ~ ~ air run summon item ~ ~ ~ {Item:{id:"minecraft:armor_stand",Count:1b,tag:{display:{Name:'{"translate":"bghs.pumpkin"}'},HideFlags:32,CustomModelData:10140002,EntityTag:{Small:1b,Invisible:1b,Tags:["spawn_pumpkin"]}}}}
execute as @e[tag=spooky_pumpkin] at @s if block ~ ~ ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:orange_stained_glass"}},distance=..0.8,limit=1]
execute as @e[tag=spooky_pumpkin] at @s if block ~ ~ ~ air run kill @s

execute as @e[tag=lucky_block] at @s if block ~ ~ ~ air run loot spawn ~ ~ ~ loot bghs:lucky_block/block
execute as @e[tag=lucky_block] at @s if block ~ ~ ~ air run kill @e[type=item,nbt={Item:{id:"minecraft:orange_stained_glass"}},distance=..0.8,limit=1]
execute as @e[tag=lucky_block] at @s if block ~ ~ ~ air run kill @s

execute as @e[tag=frame] at @s if block ~ ~-1 ~ air run summon item ~ ~ ~ {Item:{id:"minecraft:armor_stand",Count:1b,tag:{display:{Name:'{"translate":"bghs.frame"}'},HideFlags:32,CustomModelData:10140003,EntityTag:{Small:1b,Invisible:1b,Tags:["spawn_frame"]}}}}
execute as @e[tag=frame] at @s if block ~ ~-1 ~ air run kill @s

execute as @e[tag=gtrigger] at @s if block ~ ~-1 ~ air run summon item ~ ~ ~ {Item:{id:"minecraft:armor_stand",Count:1b,tag:{display:{Name:'{"translate":"bghs.trigger"}'},HideFlags:32,CustomModelData:10140005,EntityTag:{Small:1b,Invisible:1b,Tags:["spawn_trigger"]}}}}
execute as @e[tag=gtrigger] at @s if block ~ ~-1 ~ air run kill @s

execute as @e[tag=fake_lava] at @s if block ~ ~-1 ~ air run summon item ~ ~ ~ {Item:{id:"minecraft:armor_stand",Count:1b,tag:{display:{Name:'{"translate":"bghs.lava"}'},HideFlags:32,CustomModelData:10140007,EntityTag:{Small:1b,Invisible:1b,Tags:["spawn_lava"]}}}}
execute as @e[tag=fake_lava] at @s if block ~ ~-1 ~ air run kill @s

execute as @e[tag=ghost,scores={BGHS_timer=0}] at @s if block ~ ~-1 ~ air run summon item ~ ~ ~ {Item:{id:"minecraft:armor_stand",Count:1b,tag:{display:{Name:'{"translate":"bghs.ghost"}'},HideFlags:32,CustomModelData:10140006,EntityTag:{Small:1b,Invisible:1b,Tags:["spawn_ghost"]}}}}
execute as @e[tag=ghost,scores={BGHS_timer=0}] at @s if block ~ ~-1 ~ air run kill @s

kill @e[tag=kill]
