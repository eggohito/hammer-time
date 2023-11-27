#> hammer-time:impl/grid/block/mine
#
#   > Mine the block at the current position of the vector
#
#@within hammer-time:impl/grid/block/check


#   Copy the item data of the newly-spawned item at the current position of the vector
data modify storage hammer:time block_item set from entity @e[type = minecraft:item, distance = ..0.8, nbt = {Age: 0s}, limit = 1] Item

data modify storage hammer:time block_item.Slot set value 0b

kill @e[type = minecraft:item, distance = ..0.8, nbt = {Age: 0s}]


#   Mine the block at the current position of the vector
loot replace block -30000000 0 1602 container.0 mine ~ ~ ~ mainhand

setblock ~ ~ ~ air destroy

kill @e[type = minecraft:item, distance = ..0.8, nbt = {Age: 0s}]


#   Kill the experience orbs spawned from mining the block if the user used a tool enchanted with Silk Touch
execute if predicate hammer-time:user/is_holding/tool_w_silk_touch run kill @e[type = minecraft:experience_orb, distance = ..0.8, nbt = {Age: 0s}]


#   Spawn the item dropped from mining the block
loot spawn ~ ~ ~ mine -30000000 0 1602 minecraft:air{drop_contents: 1b}


#   Re-spawn the new item copied earlier
data modify block -30000000 0 1602 Items append from storage hammer:time block_item

loot spawn ~ ~ ~ mine -30000000 0 1602 minecraft:air{drop_contents: 1b}


#   Do some clean up
data remove storage hammer:time block_item

data remove block -30000000 0 1602 Items
