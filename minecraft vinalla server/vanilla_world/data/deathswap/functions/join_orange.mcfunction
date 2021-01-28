execute if entity @a[team=Orange] run tellraw @s ["",{"text":"there is already a player in this team","color":"red"}]
execute unless entity @a[team=Orange] run team join Orange @s
title @a actionbar ["",{"selector":"@a[team=Orange]"},{"text":" is the Orange Player","color":"gold"}]