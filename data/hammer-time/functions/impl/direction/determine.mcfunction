#> hammer-time:impl/direction/determine
#
#   > Determine which side the player has mined the block on
#
#   - Call this function whenever the player successfully "harvested" the block
#
#@user


#   Remove the placeholder barrier used for determining the direction of the block that the raycast has landed onto
execute if block ~ ~ ~ barrier run setblock ~ ~ ~ air


#   If the marker entity that has the `hammer-time.block.direction` tag is on the north side of the block, change the rotation context of the command to face north
execute align xyz if entity @e[type = minecraft:marker, tag = hammer-time.block.direction, dx = 0, dy = 0, dz = -0.5] positioned ~0.5 ~ ~0.5 rotated 0 0 run function hammer-time:impl/grid/prepare


#   If the marker entity that has the `hammer-time.block.direction` tag is on the south side of the block, change the rotation context of the command to face south
execute align xyz if entity @e[type = minecraft:marker, tag = hammer-time.block.direction, dx = 0, dy = 0, dz = 0.5] positioned ~0.5 ~ ~0.5 rotated 180 0 run function hammer-time:impl/grid/prepare


#   If the marker entity that has the `hammer-time.block.direction` tag is on the west side of the block, change the rotation context of the command to face west
execute align xyz if entity @e[type = minecraft:marker, tag = hammer-time.block.direction, dx = -0.5, dy = 0, dz = 0] positioned ~0.5 ~ ~0.5 rotated -90 0 run function hammer-time:impl/grid/prepare


#   If the marker entity that has the `hammer-time.block.direction` tag is on the east side of the block, change the rotation context of the command to face east
execute align xyz if entity @e[type = minecraft:marker, tag = hammer-time.block.direction, dx = 0.5, dy = 0, dz = 0] positioned ~0.5 ~ ~0.5 rotated 90 0 run function hammer-time:impl/grid/prepare


#   If the marker entity that has the `hammer-time.block.direction` tag is on the up side of the block, change the rotation context of the command to face up
execute align xyz if entity @e[type = minecraft:marker, tag = hammer-time.block.direction, dx = 0, dy = 0.5, dz = 0] positioned ~0.5 ~ ~0.5 rotated 0 -90 run function hammer-time:impl/grid/prepare


#   If the marker entity that has the `hammer-time.block.direction` tag is on the down side of the block, change the rotation context of the command to face down
execute align xyz if entity @e[type = minecraft:marker, tag = hammer-time.block.direction, dx = 0, dy = -0.5, dz = 0] positioned ~0.5 ~ ~0.5 rotated 0 90 run function hammer-time:impl/grid/prepare
