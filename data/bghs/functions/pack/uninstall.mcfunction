################################################################################
# Authors: BronGhast014
# Version: 1.16.3 +
# Copyright: October / 2020
################################################################################

scoreboard objectives remove BGHS_rand
scoreboard objectives remove BGHS_ray
scoreboard objectives remove BGHS_installed
scoreboard objectives remove BGHS_option
scoreboard objectives remove BGHS_timer
scoreboard objectives remove BGHS_tick
scoreboard objectives remove BGHS_direction
scoreboard objectives remove BGHS_click

kill @e[tag=BGHS_ADD]

tellraw @a {"text":"Uninstalled!","color":"dark_red"}
tellraw @a {"text":"To complete the process please remove the datapack and resources.zip from your world folder","color":"yellow"}
