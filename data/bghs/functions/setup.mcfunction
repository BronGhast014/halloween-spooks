################################################################################
# Authors: BronGhast014
# Version: 1.16.3 +
# Copyright: October / 2020
################################################################################

# scoreboard objectives add SPP_storage dummy "Random Number"
# scoreboard objectives setdisplay sidebar SPP_storage
# scoreboard players set Number SPP_storage 0

scoreboard objectives add SPP_rand dummy
scoreboard objectives add SPP_ray dummy
scoreboard objectives add SPP_installed dummy
scoreboard objectives add SPP_option dummy
scoreboard objectives add SPP_timer dummy
scoreboard objectives add SPP_direction dummy
scoreboard objectives add SPP_click minecraft.used:minecraft.carrot_on_a_stick

execute as @a run execute store success score @s SPP_installed run scoreboard players get @s SPP_installed
execute as @a[scores={SPP_installed=0}] run tellraw @a ["",{"text":"Halloween Spooks for Minecraft 1.16 by BronGhast014 has been installed!","color":"dark_green"}]
execute as @a[scores={SPP_installed=1..}] run tellraw @a {"text":"Reloaded!","color":"dark_green"}
