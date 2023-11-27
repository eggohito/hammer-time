#> hammer-time:private/minecraftphi/load
#
#   > Prepare MinecraftPhi's utility standard chunk
#
#@within
#   function hammer-time:private/load
#   function hammer-time:impl/enter_dimension


#   Forceload the chunk
forceload remove -30000000 1600

forceload add -30000000 1600


#   Set the necessary blocks to the forceloaded chunk
execute unless block -30000000 0 1602 minecraft:yellow_shulker_box run setblock -30000000 0 1602 minecraft:yellow_shulker_box


#   Cover the set blocks with a layer of Bedrock
fill -30000000 1 1600 -30000000 1 1615 minecraft:bedrock


#   Revoke the advancement
advancement revoke @s[advancements = {hammer-time:impl/enter_dimension = true}] only hammer-time:impl/enter_dimension
