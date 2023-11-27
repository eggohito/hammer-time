#> hammer-time:impl/grid/block/check
#
#   >   Check if the block at the current position of the vector fulfills a condition
#
#@within hammer-time:impl/grid/move_vec/x


#   Check if the user is holding a pickaxe tool and if the block is mineable by a pickaxe
execute if predicate hammer-time:user/is_holding/pickaxe if block ~ ~ ~ #minecraft:mineable/pickaxe run function hammer-time:impl/grid/block/mine


#   Check if the user is holding an axe tool and if the block is mineable by an axe
execute if predicate hammer-time:user/is_holding/axe if block ~ ~ ~ #minecraft:mineable/axe run function hammer-time:impl/grid/block/mine


#   Check if the user is holding a shovel and if the block is mineable by a shovel
execute if predicate hammer-time:user/is_holding/shovel if block ~ ~ ~ #minecraft:mineable/shovel run function hammer-time:impl/grid/block/mine


#   Check if the user is holding a hoe and if the block is mineable by a hoe
execute if predicate hammer-time:user/is_holding/hoe if block ~ ~ ~ #minecraft:mineable/hoe
