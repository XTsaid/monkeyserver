execute at @a[scores={throw_fb=1}] run summon minecraft:fireball ^ ^ ^1 {CustomName:"\"shovel_fireball\"",direction:[0d,0d,0d],power:[0d,0d,0d],ExplosionPower:3}

execute as @a[scores={throw_fb=1}] store result score @s tx run data get entity @s Pos[0] 100
execute as @a[scores={throw_fb=1}] store result score @s ty run data get entity @s Pos[1] 100
execute as @a[scores={throw_fb=1}] store result score @s tz run data get entity @s Pos[2] 100

execute as @e[name=shovel_fireball] store result score @s tx run data get entity @s Pos[0] 100
execute as @e[name=shovel_fireball] store result score @s ty run data get entity @s Pos[1] 100
execute as @e[name=shovel_fireball] store result score @s tz run data get entity @s Pos[2] 100

execute as @e[name=shovel_fireball] at @e[name=shovel_fireball] store result score @s tx run scoreboard players operation @s tx -= @p tx
execute as @e[name=shovel_fireball] at @e[name=shovel_fireball] store result score @s ty run scoreboard players operation @s ty -= @p ty
execute as @e[name=shovel_fireball] at @e[name=shovel_fireball] store result score @s tz run scoreboard players operation @s tz -= @p tz

execute as @e[name=shovel_fireball] at @a[scores={throw_fb=1}] run tp @s ~ ~1.62 ~

execute as @e[name=shovel_fireball] store result entity @s direction[0] double 0.01 run scoreboard players get @s tx
execute as @e[name=shovel_fireball] store result entity @s direction[1] double 0.01 run scoreboard players get @s ty
execute as @e[name=shovel_fireball] store result entity @s direction[2] double 0.01 run scoreboard players get @s tz

execute as @e[name=shovel_fireball] store result entity @s power[0] double 0.01 run scoreboard players get @s tx
execute as @e[name=shovel_fireball] store result entity @s power[1] double 0.01 run scoreboard players get @s ty
execute as @e[name=shovel_fireball] store result entity @s power[2] double 0.01 run scoreboard players get @s tz

scoreboard players reset @e tx
scoreboard players reset @e ty
scoreboard players reset @e tz

execute as @e[name=shovel_fireball] at @s run data merge entity @s {CustomName:""}

scoreboard players set @a[scores={throw_fb=1}] throw_fb 0