scoreboard players set timer timer 0
scoreboard players set elapsed timer 0
scoreboard players set seconds timer 0
execute as @e[tag=player,sort=random,limit=1] run execute as @s[team=Green] run scoreboard players add timer timer 1
execute as @e[tag=player,sort=random,limit=1] run execute as @s[team=Green] run scoreboard players add timer timer 2
execute as @e[tag=player,sort=random,limit=1] run execute as @s[team=Green] run scoreboard players add timer timer 4
execute as @e[tag=player,sort=random,limit=1] run execute as @s[team=Green] run scoreboard players add timer timer 8
execute as @e[tag=player,sort=random,limit=1] run execute as @s[team=Green] run scoreboard players add timer timer 16
execute as @e[tag=player,sort=random,limit=1] run execute as @s[team=Green] run scoreboard players add timer timer 32
execute as @e[tag=player,sort=random,limit=1] run execute as @s[team=Green] run scoreboard players add timer timer 64
execute as @e[tag=player,sort=random,limit=1] run execute as @s[team=Green] run scoreboard players add timer timer 128
scoreboard players operation timer timer *= spread timer
scoreboard players operation timer timer += start timer