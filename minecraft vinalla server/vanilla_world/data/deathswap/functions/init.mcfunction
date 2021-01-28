scoreboard objectives add deaths deathCount
scoreboard objectives add timer dummy
scoreboard objectives add game_state dummy
scoreboard objectives add health health
scoreboard objectives setdisplay list health
scoreboard objectives add settings dummy
scoreboard objectives add playerCount dummy
scoreboard objectives add triggers trigger
scoreboard players set timer timer 0
scoreboard players set spread timer 10
scoreboard players set start timer 600
scoreboard players set startseconds timer 30
scoreboard players set limit timer 0
scoreboard players set tickrate timer 20
scoreboard players set difficulty difficulty 1
scoreboard players set difficulty settings 2
scoreboard players set monsters settings 1
scoreboard players set regen settings 1
scoreboard players set saturation settings 0
scoreboard players set spawn settings 0
scoreboard players set warn settings 0
team add Green {"text":"Green Player","color":"green","bold":true}
team add Orange {"text":"Orange Player","color":"gold","bold":true}
team modify Orange color gold
team modify Green color green
bossbar add green {"text":"Green Player","color":"green","bold":true}
bossbar add gold {"text":"Orange Player","color":"gold","bold":true}
bossbar set minecraft:green color green
bossbar set minecraft:gold color yellow
bossbar set minecraft:green max 20
bossbar set minecraft:gold max 20
bossbar set minecraft:green players @a
bossbar set minecraft:gold players @a
title @a times 20 100 20
difficulty peaceful
gamerule logAdminCommands false
tag @a remove victor
function deathswap:reset
tellraw @a ["",{"text":"Datapack Ready!"}]