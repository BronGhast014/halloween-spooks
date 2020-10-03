####################################################
# Copyright BronGhast014
# 1.14.4
# https://www.youtube.com/c/BronGhast014
####################################################

scoreboard objectives remove SPP_rand
scoreboard objectives remove SPP_ray
scoreboard objectives remove SPP_installed
scoreboard objectives remove SPP_option
scoreboard objectives remove SPP_timer
scoreboard objectives remove SPP_direction
scoreboard objectives remove SPP_click

kill @e[tag=SPP_ADD]

tellraw @a {"text":"Uninstalled!","color":"dark_red"}
tellraw @a {"text":"To complete the process please remove the datapack and resources.zip from your world folder","color":"yellow"}
