execute if score @a[team=Orange,limit=1] deaths matches 1 run title @a subtitle ["",{"text":"Good game ","color":"gold"},{"selector":"@a[team=Orange]","color":"gold"}]
execute if score @a[team=Orange,limit=1] deaths matches 1 run title @a title ["",{"selector":"@a[team=Green]","color":"green"},{"text":" Wins!","color":"green"}]
execute if score @a[team=Orange,limit=1] deaths matches 1 run tag @a[team=Green] add victor
execute if score @a[team=Green,limit=1] deaths matches 1 run title @a subtitle ["",{"text":"Good game ","color":"green"},{"selector":"@a[team=Green]","color":"green"}]
execute if score @a[team=Green,limit=1] deaths matches 1 run title @a title ["",{"selector":"@a[team=Orange]","color":"gold"},{"text":" Wins!","color":"gold"}]
execute if score @a[team=Green,limit=1] deaths matches 1 run tag @a[team=Orange] add victor
execute if score @a[team=Green,limit=1] deaths matches 1 run execute as @a[team=!Orange] at @s run playsound minecraft:entity.wither.death player @s ~ ~ ~
execute if score @a[team=Green,limit=1] deaths matches 1 run execute as @a[team=Orange] at @s run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~
execute if score @a[team=Orange,limit=1] deaths matches 1 run execute as @a[team=!Green] at @s run playsound minecraft:entity.wither.death player @s ~ ~ ~
execute if score @a[team=Orange,limit=1] deaths matches 1 run execute as @a[team=Green] at @s run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~
kill @a
function deathswap:reset