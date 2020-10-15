################################################################################
# Authors: BronGhast014
# Version: 1.16.2 +
# Copyright: October / 2020
# Discription: Runs the games main loop
################################################################################

# -- remove items

execute as @e[nbt={Item:{id:"minecraft:stone_button",tag:{kill:1}}}] run function bghs:item/remove_mobs

execute as @e[type=minecraft:armor_stand,tag=frame] at @s if block ~ ~-1 ~ air run function bghs:block/frame/remove
execute as @e[type=minecraft:armor_stand,tag=spooky_pumpkin] at @s if block ~ ~ ~ air run function bghs:block/pumpkin/remove

# -- place items

scoreboard players set @e[type=minecraft:armor_stand,tag=setRot] BGHS_option 0
execute as @e[type=minecraft:armor_stand,tag=setRot] run function bghs:block/rotate_90
tag @e[type=minecraft:armor_stand,tag=setRot] remove setRot

execute as @e[type=minecraft:armor_stand,tag=spawn_sound_maker] at @s run function bghs:block/soundmaker/place
execute as @e[type=minecraft:armor_stand,tag=spawn_pumpkin] at @s run function bghs:block/pumpkin/place
execute as @e[type=minecraft:armor_stand,tag=spawn_spumpkin] at @s run function bghs:block/pumpkin/place_scare

execute as @e[type=minecraft:armor_stand,tag=spawn_frame] run data merge entity @s {Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["setRot","frame","BGHS_ADD"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:10140203}}],Pose:{Body:[360f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[360f,0f,0f]},Rotation:[0F,0F]}

execute as @e[type=minecraft:armor_stand,tag=spawn_trigger] run data merge entity @s {Marker:1b,Small:1b,Invisible:1b,NoBasePlate:1b,Tags:["gtrigger","hiddenH","set0","BGHS_ADD"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:10140205}}]}

execute as @e[type=minecraft:armor_stand,tag=spawn_lava] run data merge entity @s {Marker:1b,Small:1b,Invisible:1b,NoBasePlate:1b,Tags:["setRot","fake_lava","BGHS_ADD"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:10140206}}],Pose:{Body:[360f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[360f,0f,0f]},Rotation:[0F,0F]}

execute at @e[type=minecraft:armor_stand,tag=spawn_lucky] run setblock ~ ~ ~ orange_stained_glass
execute at @e[type=minecraft:armor_stand,tag=spawn_lucky] run summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,NoBasePlate:1b,Tags:["setRot","lucky_block","BGHS_ADD"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:10140208}}],Pose:{Body:[360f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[360f,0f,0f]},Rotation:[0F,0F]}
execute as @e[type=minecraft:armor_stand,tag=spawn_lucky] run kill @s

execute as @e[type=minecraft:armor_stand,tag=spawn_ghost] run data merge entity @s {Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["ghost","set0","BGHS_ADD"],DisabledSlots:4144959,Pose:{Body:[360f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[360f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:10140204}}]}

# -- run items

# wrench
execute as @a[scores={BGHS_click=1..}] at @s run function bghs:ray/cast
execute as @a[scores={BGHS_click=1..}] at @s run effect give @e[type=minecraft:armor_stand,tag=hiddenH,distance=..15] glowing 5 1 true
execute as @a[scores={BGHS_click=1..}] at @s at @e[type=minecraft:armor_stand,tag=hiddenH,distance=..15] run particle minecraft:instant_effect ~ ~ ~ 0.2 0.2 0.2 1 10

# trigger
execute as @e[type=minecraft:armor_stand,tag=gtrigger,scores={BGHS_timer=0..0}] at @s if entity @p[distance=..2] run function bghs:item/trigger/activate
execute as @e[type=minecraft:armor_stand,tag=gtrigger] run function bghs:item/trigger/run
# mobs
execute as @e[tag=targetPlayer] at @s run tp @s ~ ~ ~ facing entity @p[sort=nearest] feet
# lucky block
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:stone_button",tag:{mob:1}}}] run function bghs:block/lucky_block/summon_mob
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:stone_button",tag:{event:1}}}] run function bghs:block/lucky_block/event
execute as @e[type=minecraft:armor_stand,tag=lucky_block] at @s if block ~ ~ ~ air run function bghs:block/lucky_block/run
# soundmaker
execute as @e[type=minecraft:armor_stand,tag=sound_maker] run function bghs:block/soundmaker/run
# pumpkin
execute as @e[type=minecraft:armor_stand,tag=spooky_spumpkin] run function bghs:block/pumpkin/run
# ghost
execute as @e[type=minecraft:armor_stand,tag=ghost] at @s run function bghs:item/ghost/run
# lava
execute as @e[type=minecraft:armor_stand,tag=fake_lava] at @s run function bghs:block/lava/run

# -- clean up

scoreboard players set @e[tag=set0] BGHS_timer 0
scoreboard players set @e[tag=set0,tag=ghost] BGHS_option 1
tag @e[tag=set0] remove set0

scoreboard players set @a BGHS_click 0

kill @e[tag=kill]
