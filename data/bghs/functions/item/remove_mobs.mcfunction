####################################################
# Copyright BronGhast014
# 1.14.4
# https://www.youtube.com/c/BronGhast014
####################################################

execute at @s run particle poof ~ ~ ~ 0.1 0.5 0.1 0 15
kill @e[type=experience_orb,distance=..0.3]
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{fakeZombie:1}}}] run summon item ~ ~ ~ {Item:{id:"minecraft:zombie_spawn_egg",Count:1b,tag:{EntityTag:{DeathLootTable:"/",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:1b,Health:4f,IsBaby:0b,Tags:["fake_zombie","targetPlayer"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{fakeZombie:1,kill:1}}],ArmorDropChances:[0.0F,0.0F,0.0F,1.000F],Attributes:[{Name:generic.maxHealth,Base:4}]}}}}
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{fakeSkeleton:1}}}] run summon item ~ ~ ~ {Item:{id:"minecraft:skeleton_spawn_egg",Count:1b,tag:{EntityTag:{DeathLootTable:"/",PersistenceRequired:1b,NoAI:1b,Health:4f,Tags:["fake_skeleton","targetPlayer"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{fakeSkeleton:1,kill:1}}],ArmorDropChances:[0.0F,0.0F,0.0F,1.000F],Attributes:[{Name:generic.maxHealth,Base:4}]}}}}
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{fakeCreeper:1}}}] run summon item ~ ~ ~ {Item:{id:"minecraft:creeper_spawn_egg",Count:1b,tag:{EntityTag:{DeathLootTable:"/",PersistenceRequired:1b,NoAI:1b,Health:4f,Tags:["fake_creeper","targetPlayer"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{fakeCreeper:1,kill:1}}],ArmorDropChances:[0.0F,0.0F,0.0F,1.000F],Attributes:[{Name:generic.maxHealth,Base:4}]}}}}
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{fakeWitch:1}}}] run summon item ~ ~ ~ {Item:{id:"minecraft:witch_spawn_egg",Count:1b,tag:{EntityTag:{DeathLootTable:"/",PersistenceRequired:1b,NoAI:1b,Health:4f,Tags:["fake_witch","targetPlayer"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{fakeWitch:1,kill:1}}],ArmorDropChances:[0.0F,0.0F,0.0F,1.000F],Attributes:[{Name:generic.maxHealth,Base:4}]}}}}
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{fakeSpider:1}}}] run summon item ~ ~ ~ {Item:{id:"minecraft:spider_spawn_egg",Count:1b,tag:{EntityTag:{DeathLootTable:"/",PersistenceRequired:1b,NoAI:1b,Health:4f,Tags:["fake_spider","targetPlayer"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{fakeSpider:1,kill:1}}],ArmorDropChances:[0.0F,0.0F,0.0F,1.000F],Attributes:[{Name:generic.maxHealth,Base:4}]}}}}
execute at @s[nbt={Item:{id:"minecraft:stone_button",tag:{fakeCat:1}}}] run summon item ~ ~ ~ {Item:{id:"minecraft:cat_spawn_egg",Count:1b,tag:{EntityTag:{Sitting:1b,CatType:10,DeathLootTable:"/",PersistenceRequired:1b,NoAI:1b,Health:4f,Tags:["fake_cat","targetPlayer"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{fakeCat:1,kill:1}}],ArmorDropChances:[0.0F,0.0F,0.0F,1.000F],Attributes:[{Name:generic.maxHealth,Base:4}]}}}}

kill @s
