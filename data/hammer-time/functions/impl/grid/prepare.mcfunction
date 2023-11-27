#> hammer-time:impl/grid/prepare
#
#   > Prepare the origin offset for the vector
#
#@within function hammer-time:impl/direction/determine


#   Prepare the delta values before preparing the origin vector
scoreboard players operation #grid.dx hammer-time = grid.x hammer-time

scoreboard players operation #grid.dy hammer-time = grid.y hammer-time

scoreboard players operation #grid.dz hammer-time = grid.z hammer-time


scoreboard players operation #grid.dx hammer-time /= #2 hammer-time

scoreboard players operation #grid.dy hammer-time /= #2 hammer-time

scoreboard players operation #grid.dz hammer-time /= #2 hammer-time


#   Prepare the origin vector starting from the negative X axis
function hammer-time:impl/grid/move_vec/origin/-x
