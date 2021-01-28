execute as @a[scores={back_cookie=1..}] if entity @s[team=!blue_team] if entity @s[team=!red_team] run scoreboard players set @s back_cookie 0
execute as @a[scores={back_cookie2=1..}] if entity @s[team=!blue_team] if entity @s[team=!red_team] run scoreboard players set @s back_cookie2 0

scoreboard players add @a[nbt={OnGround:1b},scores={back_cookie=1..}] back_delay 1
scoreboard players add @a[nbt={OnGround:1b},scores={back_cookie2=1..}] back_delay 1
execute at @a[scores={back_delay=1}] run playsound block.portal.travel master @a ~ ~ ~ 1 1.65
execute at @a[scores={back_delay=97}] run particle minecraft:flash ~ ~ ~ 0 0 0 1 5
execute at @a[scores={back_delay=1..70}] run particle minecraft:portal ~ ~1 ~ 0 0 0 5 10
effect give @a[scores={back_delay=1}] minecraft:nausea 10 3 true
effect give @a[scores={back_delay=1}] minecraft:slowness 5 9 true
effect give @a[scores={back_delay=1}] minecraft:jump_boost 5 128 true
effect give @a[scores={back_delay=1}] minecraft:weakness 5 5 true
effect clear @a[scores={back_delay=100..}] minecraft:nausea
effect give @a[scores={back_delay=100..}] minecraft:resistance 1 5 true
execute at @a[scores={back_delay=100..}] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 2
execute if score start_time TickCount matches 1.. run tp @a[scores={back_delay=100..},team=blue_team] 0 105 -100
execute if score start_time TickCount matches 1.. run tp @a[scores={back_delay=100..},team=red_team] 0 105 100
execute if score start_time TickCount matches 0..0 run tp @a[scores={back_delay=100..},team=blue_team] -2004.0 107 -43.0
execute if score start_time TickCount matches 0..0 run tp @a[scores={back_delay=100..},team=red_team] -1995.0 107 -43.0
execute at @a[scores={back_delay=100..}] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 2
execute as @a[scores={back_delay=100..}] run stopsound @a * block.portal.travel

scoreboard players set @a[scores={back_delay=100..}] back_cookie 0
scoreboard players set @a[scores={back_delay=100..}] back_cookie2 0
scoreboard players set @a[scores={back_delay=100..}] back_delay 0
kill @e[type=item,nbt={Item:{id:"minecraft:cookie"}}]