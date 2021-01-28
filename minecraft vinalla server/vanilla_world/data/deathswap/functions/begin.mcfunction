execute as @a run scoreboard players add playerCount playerCount 1
execute if score playerCount playerCount matches 1 run tellraw @a ["",{"text":"There must be at least two players on the server!","color":"red"}]
execute if score playerCount playerCount matches 2 run execute unless entity @a[team=Green] run team join Green @r[team=!Orange]
execute if score playerCount playerCount matches 2 run execute unless entity @a[team=Orange] run team join Orange @r[team=!Green]
execute unless score playerCount playerCount matches 1 run execute unless entity @a[team=Orange] run tellraw @s ["",{"text":"There is no "},{"text":"Orange","color":"gold"},{"text":" player!","color":"none"}]
execute unless score playerCount playerCount matches 1 run execute unless entity @a[team=Green] run tellraw @s ["",{"text":"There is no "},{"text":"Green","color":"green"},{"text":" player!","color":"none"}]
execute if entity @a[team=Orange] run execute if entity @a[team=Green] run function deathswap:start
scoreboard players set playerCount playerCount 0