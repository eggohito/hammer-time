#> hammer-time:impl/grid/mine
#
#   >   Mine the block at the current position using the item held by the player that has the `hammer-time.user` tag
#
#@within function hammer-time:impl/grid/move/x


#   Kill the experience orbs spawned from mining the block if the user used a tool enchanted with Silk Touch
execute if predicate hammer-time:user/is_holding_item/with_silk_touch run kill @e[type = minecraft:experience_orb, distance = ..0.8, nbt = {Age: 0s}]


#   Copy the item dropped by the block mined by the player
data modify storage hammer-time:temp root.drop set from entity @e[type = minecraft:item, distance = ..0.8, nbt = {Age: 0s}, limit = 1] Item

execute if data storage hammer-time:temp root.drop run data modify storage hammer-time:temp root.drop.Slot set value 0b


#   Destroy the block at the current position of the grid
loot replace block -30000000 0 1602 container.0 mine ~ ~ ~ mainhand

setblock ~ ~ ~ air destroy

kill @e[type = minecraft:item, distance = ..0.8, nbt = {Age: 0s}]


#   Spawn the item dropped from mining the block at the current position of the grid
loot spawn ~ ~ ~ mine -30000000 0 1602 minecraft:air{drop_contents: 1b}


#   Respawn the item dropped by the block mined by the player
execute if data storage hammer-time:temp root.drop run data modify block -30000000 0 1602 Items append from storage hammer-time:temp root.drop

execute if data storage hammer-time:temp root.drop run loot spawn ~ ~ ~ mine -30000000 0 1602 minecraft:air{drop_contents: 1b}


#   Do some clean up
data remove storage hammer-time:temp root

data remove block -30000000 0 1602 Items
