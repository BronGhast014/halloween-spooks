################################################################################
# Authors: BronGhast014
# Version: 1.16.3 +
# Copyright: October / 2020
################################################################################

scoreboard players add @s BGHS_option 1
scoreboard players set @s[scores={BGHS_option=4..}] BGHS_option 0

execute if score @s BGHS_option matches 0 run say set motion to up
execute if score @s BGHS_option matches 1 run say set motion to forward
execute if score @s BGHS_option matches 2 run say set motion to teleport
execute if score @s BGHS_option matches 3 run say set motion to track
