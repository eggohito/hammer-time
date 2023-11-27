#> hammer-time:impl/grid/move_vec/origin/end
#
#@within hammer-time:impl/grid/move_vec/origin/-y


#   Re-initialize the scores of the `#grid.dx`, `#grid.dy` and `#grid.dz` score holders in the `hammer-time` scoreboard objective
scoreboard players operation #grid.dx hammer-time = grid.x hammer-time

scoreboard players operation #grid.dy hammer-time = grid.y hammer-time

scoreboard players operation #grid.dz hammer-time = grid.z hammer-time


#   Start destroying the blocks in the "mapped" grid
function hammer-time:impl/grid/move_vec/z
