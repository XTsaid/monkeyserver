execute if entity @a[team=Green] run tellraw @s ["",{"text":"there is already a player in this team","color":"red"}]
execute unless entity @a[team=Green] run team join Green @s
title @a actionbar ["",{"selector":"@a[team=Green]"},{"text":" is the Green Player","color":"green"}]