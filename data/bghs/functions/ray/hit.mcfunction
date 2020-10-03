################################################################################
# Authors: BronGhast014
# Version: 1.16.3 +
# Copyright: October / 2020
################################################################################

execute as @e[type=armor_stand,tag=sound_maker,distance=..0.1] run scoreboard players add @s SPP_option 1
execute as @e[tag=sound_maker,scores={SPP_option=5..}] at @s run scoreboard players set @s SPP_option 0
execute as @e[tag=sound_maker,scores={SPP_option=0}] at @s run setblock ~ ~ ~ cobweb
execute as @e[tag=sound_maker,scores={SPP_option=1}] at @s run setblock ~ ~ ~ pumpkin
execute as @e[tag=sound_maker,scores={SPP_option=2}] at @s run setblock ~ ~ ~ dirt
execute as @e[tag=sound_maker,scores={SPP_option=3}] at @s run setblock ~ ~ ~ stone
execute as @e[tag=sound_maker,scores={SPP_option=4}] at @s run setblock ~ ~ ~ skeleton_skull

execute positioned ~ ~1 ~ as @e[type=armor_stand,tag=ghost,distance=..0.1] run scoreboard players add @s SPP_option 1
execute positioned ~ ~1 ~ as @e[type=armor_stand,tag=ghost,distance=..0.1,scores={SPP_option=4..}] run scoreboard players set @s SPP_option 0
execute positioned ~ ~1 ~ as @e[type=armor_stand,tag=ghost,distance=..0.1,scores={SPP_option=0}] run say set motion to forward
execute positioned ~ ~1 ~ as @e[type=armor_stand,tag=ghost,distance=..0.1,scores={SPP_option=1}] run say set motion to up
execute positioned ~ ~1 ~ as @e[type=armor_stand,tag=ghost,distance=..0.1,scores={SPP_option=2}] run say set motion to teleport
execute positioned ~ ~1 ~ as @e[type=armor_stand,tag=ghost,distance=..0.1,scores={SPP_option=3}] run say set motion to track

execute as @e[type=armor_stand,tag=spooky_pumpkin,distance=..0.1] run scoreboard players add @s SPP_option 1
execute as @e[tag=spooky_pumpkin,scores={SPP_option=4..}] at @s run scoreboard players set @s SPP_option 0
execute as @e[tag=spooky_pumpkin,scores={SPP_option=0}] run data merge entity @s {Rotation:[0F,0F]}
execute as @e[tag=spooky_pumpkin,scores={SPP_option=1}] run data merge entity @s {Rotation:[90F,0F]}
execute as @e[tag=spooky_pumpkin,scores={SPP_option=2}] run data merge entity @s {Rotation:[180F,0F]}
execute as @e[tag=spooky_pumpkin,scores={SPP_option=3}] run data merge entity @s {Rotation:[270F,0F]}

execute positioned ~ ~1 ~ as @e[type=armor_stand,tag=frame,distance=..0.1] run scoreboard players add @s SPP_option 1
execute as @e[tag=frame,scores={SPP_option=4..}] at @s run scoreboard players set @s SPP_option 0
execute as @e[tag=frame,scores={SPP_option=0}] run data merge entity @s {Rotation:[0F,0F]}
execute as @e[tag=frame,scores={SPP_option=1}] run data merge entity @s {Rotation:[90F,0F]}
execute as @e[tag=frame,scores={SPP_option=2}] run data merge entity @s {Rotation:[180F,0F]}
execute as @e[tag=frame,scores={SPP_option=3}] run data merge entity @s {Rotation:[270F,0F]}

execute positioned ~ ~1 ~ as @e[tag=fake_lava,distance=..0.1] at @s run stopsound @a block minecraft:block.lava.ambient
execute positioned ~ ~1 ~ as @e[tag=fake_lava,distance=..0.1] at @s run setblock ~ ~ ~ sponge
execute positioned ~ ~1 ~ as @e[tag=fake_lava,distance=..0.1] at @s run setblock ~ ~ ~ air
execute positioned ~ ~1 ~ as @e[tag=fake_lava,distance=..0.1] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:armor_stand",Count:1b,tag:{display:{Name:'{"translate":"bgsdp.lava"}'},HideFlags:32,CustomModelData:10140007,EntityTag:{Small:1b,Invisible:1b,Tags:["spawn_lava"]}}}}
execute positioned ~ ~1 ~ as @e[tag=fake_lava,distance=..0.1] run kill @s
