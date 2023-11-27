#> hammer-time:impl/grid/move_vec/origin/-x
#
#   > Move the vector to the negative X axis
#
#@within
#   hammer-time:impl/grid/prepare
#   hammer-time:impl/grid/move_vec/origin/-x


#   Decrement the score of the `#grid.dx` score holder in the `hammer-time` scoreboard objective
scoreboard players remove #grid.dx hammer-time 1


#   Re-position the origin vector to the negative Y axis if the score of the `#grid.dx` score holder in the `hammer-time` scoreboard objective is 0 or less
execute if score grid.x hammer-time matches ..1 run function hammer-time:impl/grid/move_vec/origin/-y

execute unless score grid.x hammer-time matches ..1 if score #grid.dx hammer-time matches ..0 positioned ^-1 ^ ^ run function hammer-time:impl/grid/move_vec/origin/-y


#   Otherwise, re-position the origin vector to the negative X axis instead
execute unless score #grid.dx hammer-time matches ..0 positioned ^-1 ^ ^ run function hammer-time:impl/grid/move_vec/origin/-x
