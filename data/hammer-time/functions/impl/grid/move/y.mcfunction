#> hammer-time:impl/grid/move/y
#
#   >   Move the grid to the Y axis (positive) and mine the block at the current position
#
#@within
#   hammer-time:impl/grid/move/z
#   hammer-time:impl/grid/move/y


#   Decrement the score of the `#grid.dy` score holder in the `hammer-time` scoreboard objective
scoreboard players remove #grid.dy hammer-time 1


#   Re-position the vector to the positive X axis
scoreboard players operation #grid.dx hammer-time = grid.x hammer-time

function hammer-time:impl/grid/move/x


#   Loop this function until the score of the `#grid.dy` score holder in the `hammer-time` scoreboard objective is 0 or less
execute unless score #grid.dy hammer-time matches ..0 positioned ^ ^1 ^ run function hammer-time:impl/grid/move/y
