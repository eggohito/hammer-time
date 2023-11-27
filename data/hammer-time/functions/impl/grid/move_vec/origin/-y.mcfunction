#> hammer-time:impl/grid/move_vec/origin/-y
#
#   > Move the vector to the negative Y axis
#
#@within
#   hammer-time:impl/grid/move_vec/origin/-x
#   hammer-time:impl/grid/move_vec/origin/-y


#   Decrement the score of the `#grid.dy` score holder in the `hammer-time` scoreboard objective
scoreboard players remove #grid.dy hammer-time 1


#   Re-position the origin vector to the negative Z axis if the score of the `#grid.dx` score holder in the `hammer-time` scoreboard objective is 0 or less
execute if score grid.y hammer-time matches ..1 run function hammer-time:impl/grid/move_vec/origin/end

execute unless score grid.y hammer-time matches ..1 if score #grid.dx hammer-time matches ..0 positioned ^ ^-1 ^ run function hammer-time:impl/grid/move_vec/origin/end


#   Otherwise, re-position the origin vector to the negative X axis instead
execute unless score #grid.dy hammer-time matches ..0 positioned ^ ^-1 ^ run function hammer-time:impl/grid/move_vec/origin/-y
