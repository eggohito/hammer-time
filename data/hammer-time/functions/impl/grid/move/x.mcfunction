#> hammer-time:impl/grid/move/x
#
#   >   Move the grid to the X axis (positive) and mine the block at the current position
#
#@within
#   hammer-time:impl/grid/move/y
#   hammer-time:impl/grid/move/x


#   Decrement the score of the `#grid.dx` score holder in the `hammer-time` scoreboard objective
scoreboard players remove #grid.dx hammer-time 1


#   Check if the block at the current position of the vector fulfills a condition
execute align xyz positioned ~0.5 ~0.5 ~0.5 as @a[tag = hammer-time.user] if predicate hammer-time:grid/mineable run function hammer-time:impl/grid/mine


#   Loop this function until the score of the `#grid.dx` score holder in the `hammer-time` scoreboard objective is 0 or less
execute unless score #grid.dx hammer-time matches ..0 positioned ^1 ^ ^ run function hammer-time:impl/grid/move/x
