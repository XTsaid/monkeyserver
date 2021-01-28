scoreboard players enable @a triggers
execute as @a[scores={triggers=1}] run execute as @s run function deathswap:join_orange
execute as @a[scores={triggers=2}] run execute as @s run function deathswap:join_green
execute as @a[scores={triggers=3}] run execute as @s run function deathswap:begin
execute as @a[scores={triggers=4}] run execute as @s run scoreboard players set difficulty settings 0
execute as @a[scores={triggers=4}] run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" set the difficulty to Peaceful","color":"blue"}]
execute as @a[scores={triggers=5}] run execute as @s run scoreboard players set difficulty settings 1
execute as @a[scores={triggers=5}] run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" set the difficulty to Easy","color":"blue"}]
execute as @a[scores={triggers=6}] run execute as @s run scoreboard players set difficulty settings 2
execute as @a[scores={triggers=6}] run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" set the difficulty to Normal","color":"blue"}]
execute as @a[scores={triggers=7}] run execute as @s run scoreboard players set difficulty settings 3
execute as @a[scores={triggers=7}] run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" set the difficulty to Hard","color":"blue"}]
execute as @a[scores={triggers=8}] run execute as @s run scoreboard players set monsters settings 1
execute as @a[scores={triggers=8}] run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" enabled monster spawning","color":"blue"}]
execute as @a[scores={triggers=9}] run execute as @s run scoreboard players set monsters settings 0
execute as @a[scores={triggers=9}] run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" disabled monster spawning","color":"blue"}]
execute as @a[scores={triggers=10}] run execute as @s run scoreboard players set regen settings 1
execute as @a[scores={triggers=10}] run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" enabled natural health regeneration","color":"blue"}]
execute as @a[scores={triggers=11}] run execute as @s run scoreboard players set regen settings 0
execute as @a[scores={triggers=11}] run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" disabled natural health regeneration","color":"blue"}]
execute as @a[scores={triggers=12}] run execute as @s run scoreboard players set saturation settings 1
execute as @a[scores={triggers=12}] run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" enabled infinite saturation","color":"blue"}]
execute as @a[scores={triggers=13}] run execute as @s run scoreboard players set saturation settings 0
execute as @a[scores={triggers=13}] run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" disabled infinite saturation","color":"blue"}]
execute as @a[scores={triggers=14}] run execute as @s run scoreboard players set spawn settings 0
execute as @a[scores={triggers=14}] run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" disabled spawn safety","color":"blue"}]
execute as @a[scores={triggers=15}] run execute as @s run scoreboard players set spawn settings 1
execute as @a[scores={triggers=15}] run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" enabled 1 second spawn safety","color":"blue"}]
execute as @a[scores={triggers=16}] run execute as @s run scoreboard players set spawn settings 2
execute as @a[scores={triggers=16}] run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" enabled 3 second spawn safety","color":"blue"}]
execute as @a[scores={triggers=17}] run execute as @s run scoreboard players set warn settings 0
execute as @a[scores={triggers=17}] run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" disabled swap warning","color":"blue"}]
execute as @a[scores={triggers=18}] run execute as @s run scoreboard players set warn settings 1
execute as @a[scores={triggers=18}] run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" enabled 5 second swap warning","color":"blue"}]
execute as @a[scores={triggers=19}] run execute as @s run scoreboard players set warn settings 2
execute as @a[scores={triggers=19}] run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" enabled 10 second swap warning","color":"blue"}]
scoreboard players set @a triggers 0