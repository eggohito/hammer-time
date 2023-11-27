#> hammer-time:impl/grid/offset/end
#
#   >   End the process of offsetting the starting position of the grid
#
#@within hammer-time:impl/direction/offset/y


#   Re-initialize the scores of the `#grid.dx`, `#grid.dy` and `#grid.dz` score holders in the `hammer-time` scoreboard objective
scoreboard players operation #grid.dx hammer-time = grid.x hammer-time

scoreboard players operation #grid.dy hammer-time = grid.y hammer-time

scoreboard players operation #grid.dz hammer-time = grid.z hammer-time


#   Start destroying the blocks within the grid
function hammer-time:impl/grid/move/z
