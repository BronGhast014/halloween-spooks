################################################################################
# Authors: BronGhast014
# Version: 1.16.2 +
# Copyright: October / 2020
# Discription: Installs Halloween Spooks
################################################################################

# gamerules
gamerule sendCommandFeedback false

#region Add scoreboards

scoreboard objectives add BGHS_rand dummy
scoreboard objectives add BGHS_ray dummy
scoreboard objectives add BGHS_option dummy
scoreboard objectives add BGHS_timer dummy
scoreboard objectives add BGHS_tick dummy
scoreboard objectives add BGHS_direction dummy
scoreboard objectives add BGHS_click minecraft.used:minecraft.carrot_on_a_stick

#endregion

#region Set up globals

scoreboard players set bghs:global BGHS_installed 1
scoreboard players set bghs:global BGHS_rand 0

#endregion

# installation comments
tellraw @a {"text":"Halloween Spooks by BronGhast014 has been installed!","color":"#FF7033"}
tellraw @a [{"text":"For help please use: ","color":"dark_purple"},{"text":"/function #help:halloween_spooks","color":"light_purple","clickEvent":{"action":"run_command","value":"/function #help:halloween_spooks"}}]
