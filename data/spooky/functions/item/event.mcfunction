####################################################
# Copyright BronGhast014
# 1.14.4
# https://www.youtube.com/c/BronGhast014
####################################################

execute at @s run particle poof ~ ~ ~ 0.1 0.5 0.1 0 15
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{lightning:1}}}] run summon lightning_bolt ~ ~ ~
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{webs:1}}}] run fill ~-6 ~-6 ~-6 ~6 ~6 ~6 cobweb replace air
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{new:1}}}] run summon armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Tags:["spawn_lucky"]}
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{cage:1}}}] positioned ~ ~10 ~ run fill ~-6 ~ ~-6 ~6 ~6 ~6 anvil replace air

kill @s
