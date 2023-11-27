#> hammer-time:private/load
#
#@within tag/function minecraft:load


#>  A storage for storing temporary data
#@internal
    #declare storage hammer-time:temp


#>  Positions of blocks used for utility
#@internal
    #alias vector minecraftphi.shulker_box -30000000 0 1602


#   Prepare the MinecraftPhi chunk
function hammer-time:private/minecraftphi/load


#   Add scoreboard objective(s)
scoreboard objectives add hammer-time dummy


#   Initialize default config values
execute unless score #loaded hammer-time = #loaded hammer-time run function hammer-time:config/default


#   Display load/reload message
execute unless score #loaded hammer-time = #loaded hammer-time run tellraw @a[tag = hammer-time.debugger] {"translate": "[+ Loaded \"Hammer Time!\" by @eggohito#9048 - v1.0.0]", "color": "green"}

execute if score #loaded hammer-time = #loaded hammer-time run tellraw @a[tag = hammer-time.debugger] {"translate": "[= Reloaded \"Hammer Time!\" by @eggohito#9048 - v1.0.0]", "color": "gold"}


#   Initialize constants
scoreboard players set #loaded hammer-time 1

scoreboard players set #2 hammer-time 2
