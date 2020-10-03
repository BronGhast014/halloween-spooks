################################################################################
# Authors: BronGhast014
# Version: 1.16.2 +
# Copyright: October / 2020
# Discription: Runs the games main loop
################################################################################

# wrench
execute as @a[scores={BGHS_click=1..}] at @s run function bghs:ray/cast
execute as @a[scores={BGHS_click=1..}] at @s run effect give @e[tag=hiddenH,distance=..15] glowing 5 1 true
execute as @a[scores={BGHS_click=1..}] at @s at @e[tag=hiddenH,distance=..15] run particle minecraft:instant_effect ~ ~ ~ 0.2 0.2 0.2 1 10
scoreboard players set @a BGHS_click 0

# mobs
execute as @e[tag=targetPlayer] at @s run tp @s ~ ~ ~ facing entity @p[sort=nearest] feet
execute as @e[nbt={Item:{id:"minecraft:stone_button",tag:{kill: 1}}}] run function bghs:item/remove_mobs
execute as @e[nbt={Item:{id:"minecraft:stone_button",tag:{mob: 1}}}] run function bghs:item/add_mobs
execute as @e[nbt={Item:{id:"minecraft:stone_button",tag:{event: 1}}}] run function bghs:item/event

#place items
execute as @e[tag=spawn_sound_maker] at @s run function bghs:item/place_soundmaker
execute as @e[tag=spawn_pumpkin] at @s run function bghs:item/place_pumpkin
execute as @e[tag=spawn_spumpkin] at @s run function bghs:item/place_spumpkin
execute as @e[tag=spawn_frame] run data merge entity @s {Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["frame","BGHS_ADD"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:10140203}}],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]}}
execute as @e[tag=spawn_trigger] run data merge entity @s {Marker:1b,Small:1b,Invisible:1b,NoBasePlate:1b,Tags:["gtrigger","hiddenH","set0","BGHS_ADD"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:10140205}}]}
execute as @e[tag=spawn_lava] run data merge entity @s {Marker:1b,Small:1b,Invisible:1b,NoBasePlate:1b,Tags:["fake_lava","BGHS_ADD"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:10140206}}],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]}}
execute at @e[tag=spawn_lucky] run setblock ~ ~ ~ orange_stained_glass
execute at @e[tag=spawn_lucky] run summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,NoBasePlate:1b,Tags:["lucky_block","BGHS_ADD"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:10140208}}],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]}}
execute as @e[tag=spawn_lucky] run kill @s
execute as @e[tag=spawn_ghost] run data merge entity @s {Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["ghost","set0","BGHS_ADD"],DisabledSlots:4144959,Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:10140204}}]}

#run items
execute as @e[tag=sound_maker] run function bghs:item/soundmaker
execute as @e[tag=spooky_spumpkin] run function bghs:item/pumpkin
execute as @e[tag=ghost] at @s run function bghs:item/ghost
execute as @e[tag=fake_lava] at @s run function bghs:item/fake_lava

#reset and remove
function bghs:item/remove
scoreboard players set @e[tag=set0] BGHS_timer 0
scoreboard players set @e[tag=set0,tag=ghost] BGHS_option 0
tag @e[tag=set0] remove set0

#trigger
execute as @e[tag=gtrigger,scores={BGHS_timer=0..0}] at @s if entity @p[distance=..2] run particle flame ~ ~ ~ 0.5 0 0.5 0 10 force
execute as @e[tag=gtrigger,scores={BGHS_timer=0..0}] at @s if entity @p[distance=..2] run playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 1 2
execute as @e[tag=gtrigger,scores={BGHS_timer=0..0}] at @s if entity @p[distance=..2] run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 0.1
execute as @e[tag=gtrigger,scores={BGHS_timer=0..0}] at @s if entity @p[distance=..2] run execute as @e[type=armor_stand,sort=nearest,distance=..20,tag=ghost] run scoreboard players set @s BGHS_timer 1
execute as @e[tag=gtrigger,scores={BGHS_timer=0..2}] at @s if entity @p[distance=..2] run scoreboard players set @s BGHS_timer 1
scoreboard players add @e[tag=gtrigger,scores={BGHS_timer=1..}] BGHS_timer 1
scoreboard players set @e[tag=gtrigger,scores={BGHS_timer=100..}] BGHS_timer 0
