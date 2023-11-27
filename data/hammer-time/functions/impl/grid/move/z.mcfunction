#> hammer-time:impl/grid/move/z
#
#   >   Move the grid to the Z axis (positive) and mine the block at the current position
#
#@within
#   hammer-time:impl/grid/offset/end
#   hammer-time:impl/grid/move/z


#   Decrement the score of the `#grid.dx` score holder in the `hammer-time` scoreboard objective
scoreboard players remove #grid.dz hammer-time 1


#   Re-position the vector to the positive Y axis
scoreboard players operation #grid.dy hammer-time = grid.y hammer-time

function hammer-time:impl/grid/move/y


#   Loop this function until the score of the `#grid.dz` score holder in the `hammer-time` scoreboard objective is 0 or less
execute unless score #grid.dz hammer-time matches ..0 positioned ^ ^ ^1 run function hammer-time:impl/grid/move/z
