execute at @a[team=Green] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Invulnerable:1,Invisible:1,CustomName:"\"tele\""}
execute if score spawn settings matches 1 run effect give @a[tag=player] minecraft:resistance 1 255
execute if score spawn settings matches 2 run effect give @a[tag=player] minecraft:resistance 3 255
tp @a[team=Green] @a[team=Orange,limit=1]
tp @a[team=Orange] @e[name=tele,limit=1]
kill @e[name=tele]
function deathswap:timer
tellraw @a ["",{"text":"Swap!","bold":true}]
execute as @a at @s run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~