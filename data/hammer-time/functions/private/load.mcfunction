#> hammer-time:private/load
#
#@within tag/function minecraft:load


#   Prepare the MinecraftPhi chunk
function hammer-time:private/minecraftphi/prep_util_chunk


#   Add scoreboard objective(s)
scoreboard objectives add hammer-time dummy


#   Initialize constants
scoreboard players set #2 hammer-time 2


#   Initialize variables
execute unless score #loaded hammer-time = #loaded hammer-time run function hammer-time:config/default


#   Display load/reload message
execute unless score #loaded hammer-time = #loaded hammer-time run tellraw @a[tag = hammer-time.debugger] {"translate": "[+ Loaded \"Hammer Time!\" by @eggohito#9048 - v1.0.0]", "color": "green"}

execute if score #loaded hammer-time = #loaded hammer-time run tellraw @a[tag = hammer-time.debugger] {"translate": "[= Reloaded \"Hammer Time!\" by @eggohito#9048 - v1.0.0]", "color": "gold"}


#   Declare that the datapack has been loaded
scoreboard players set #loaded hammer-time 1
