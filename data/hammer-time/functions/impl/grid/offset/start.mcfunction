#> hammer-time:impl/grid/offset/start
#
#   >   Start offsetting the starting position of the grid
#
#@within function hammer-time:impl/direction/determine


#   Prepare the delta values to be used for offsetting the starting position
scoreboard players operation #grid.dx hammer-time = grid.x hammer-time

scoreboard players operation #grid.dy hammer-time = grid.y hammer-time

scoreboard players operation #grid.dz hammer-time = grid.z hammer-time


scoreboard players operation #grid.dx hammer-time /= #2 hammer-time

scoreboard players operation #grid.dy hammer-time /= #2 hammer-time

scoreboard players operation #grid.dz hammer-time /= #2 hammer-time


#   Start offsetting the starting position in the X axis
function hammer-time:impl/grid/offset/x
