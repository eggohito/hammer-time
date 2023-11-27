#> hammer-time:impl/grid/move_vec/y
#
#@within
#   hammer-time:impl/grid/move_vec/z
#   hammer-time:impl/grid/move_vec/y


#   Decrement the score of the `#grid.dy` score holder in the `hammer-time` scoreboard objective
scoreboard players remove #grid.dy hammer-time 1


#   Re-position the vector to the positive X axis
scoreboard players operation #grid.dx hammer-time = grid.x hammer-time

function hammer-time:impl/grid/move_vec/x


#   Loop this function until the score of the `#grid.dy` score holder in the `hammer-time` scoreboard objective is 0 or less
execute unless score #grid.dy hammer-time matches ..0 positioned ^ ^1 ^ run function hammer-time:impl/grid/move_vec/y
