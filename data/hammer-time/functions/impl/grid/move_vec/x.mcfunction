#> hammer-time:impl/grid/move_vec/x
#
#@within
#   hammer-time:impl/grid/move_vec/y
#   hammer-time:impl/grid/move_vec/x


#   Decrement the score of the `#grid.dx` score holder in the `hammer-time` scoreboard objective
scoreboard players remove #grid.dx hammer-time 1


#   Check if the block at the current position of the vector fulfills a condition
execute align xyz positioned ~0.5 ~0.5 ~0.5 as @a[tag = hammer-time.user] run function hammer-time:impl/grid/block/check


#   Loop this function until the score of the `#grid.dx` score holder in the `hammer-time` scoreboard objective is 0 or less
execute unless score #grid.dx hammer-time matches ..0 positioned ^1 ^ ^ run function hammer-time:impl/grid/move_vec/x
