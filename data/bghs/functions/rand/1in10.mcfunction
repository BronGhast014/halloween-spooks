################################################################################
# Authors: BronGhast014
# Version: 1.16.3 +
# Copyright: October / 2020
################################################################################

loot spawn ~ -2 ~ loot minecraft:rand/1in10

execute positioned ~ -2 ~ if entity @e[limit=1,sort=nearest,nbt={Item:{id:"minecraft:stone_button",tag:{1in10Result:1}}}] run scoreboard players set @s BGHS_rand 1
execute positioned ~ -2 ~ if entity @e[limit=1,sort=nearest,nbt={Item:{id:"minecraft:stone_button",tag:{1in10Result:2}}}] run scoreboard players set @s BGHS_rand 2
execute positioned ~ -2 ~ if entity @e[limit=1,sort=nearest,nbt={Item:{id:"minecraft:stone_button",tag:{1in10Result:3}}}] run scoreboard players set @s BGHS_rand 3
execute positioned ~ -2 ~ if entity @e[limit=1,sort=nearest,nbt={Item:{id:"minecraft:stone_button",tag:{1in10Result:4}}}] run scoreboard players set @s BGHS_rand 4
execute positioned ~ -2 ~ if entity @e[limit=1,sort=nearest,nbt={Item:{id:"minecraft:stone_button",tag:{1in10Result:5}}}] run scoreboard players set @s BGHS_rand 5
execute positioned ~ -2 ~ if entity @e[limit=1,sort=nearest,nbt={Item:{id:"minecraft:stone_button",tag:{1in10Result:6}}}] run scoreboard players set @s BGHS_rand 6
execute positioned ~ -2 ~ if entity @e[limit=1,sort=nearest,nbt={Item:{id:"minecraft:stone_button",tag:{1in10Result:7}}}] run scoreboard players set @s BGHS_rand 7
execute positioned ~ -2 ~ if entity @e[limit=1,sort=nearest,nbt={Item:{id:"minecraft:stone_button",tag:{1in10Result:8}}}] run scoreboard players set @s BGHS_rand 8
execute positioned ~ -2 ~ if entity @e[limit=1,sort=nearest,nbt={Item:{id:"minecraft:stone_button",tag:{1in10Result:9}}}] run scoreboard players set @s BGHS_rand 9
execute positioned ~ -2 ~ if entity @e[limit=1,sort=nearest,nbt={Item:{id:"minecraft:stone_button",tag:{1in10Result:10}}}] run scoreboard players set @s BGHS_rand 10

# execute positioned ~ -2 ~ if entity @e[limit=1,sort=nearest,nbt={Item:{id:"minecraft:stone_button",tag:{1in10Result:1}}}] run scoreboard players set Number BGHS_storage 1
# execute positioned ~ -2 ~ if entity @e[limit=1,sort=nearest,nbt={Item:{id:"minecraft:stone_button",tag:{1in10Result:2}}}] run scoreboard players set Number BGHS_storage 2
# execute positioned ~ -2 ~ if entity @e[limit=1,sort=nearest,nbt={Item:{id:"minecraft:stone_button",tag:{1in10Result:3}}}] run scoreboard players set Number BGHS_storage 3
# execute positioned ~ -2 ~ if entity @e[limit=1,sort=nearest,nbt={Item:{id:"minecraft:stone_button",tag:{1in10Result:4}}}] run scoreboard players set Number BGHS_storage 4
# execute positioned ~ -2 ~ if entity @e[limit=1,sort=nearest,nbt={Item:{id:"minecraft:stone_button",tag:{1in10Result:5}}}] run scoreboard players set Number BGHS_storage 5
# execute positioned ~ -2 ~ if entity @e[limit=1,sort=nearest,nbt={Item:{id:"minecraft:stone_button",tag:{1in10Result:6}}}] run scoreboard players set Number BGHS_storage 6
# execute positioned ~ -2 ~ if entity @e[limit=1,sort=nearest,nbt={Item:{id:"minecraft:stone_button",tag:{1in10Result:7}}}] run scoreboard players set Number BGHS_storage 7
# execute positioned ~ -2 ~ if entity @e[limit=1,sort=nearest,nbt={Item:{id:"minecraft:stone_button",tag:{1in10Result:8}}}] run scoreboard players set Number BGHS_storage 8
# execute positioned ~ -2 ~ if entity @e[limit=1,sort=nearest,nbt={Item:{id:"minecraft:stone_button",tag:{1in10Result:9}}}] run scoreboard players set Number BGHS_storage 9
# execute positioned ~ -2 ~ if entity @e[limit=1,sort=nearest,nbt={Item:{id:"minecraft:stone_button",tag:{1in10Result:10}}}] run scoreboard players set Number BGHS_storage 10
#scoreboard players operation @s = Number BGHS_storage

kill @e[nbt={Item:{id:"minecraft:stone_button",tag:{kill:1}}}]
