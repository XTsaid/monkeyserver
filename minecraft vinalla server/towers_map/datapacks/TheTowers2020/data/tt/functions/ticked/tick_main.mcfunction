# COUNT
execute if score start_time TickCount matches 1.. run scoreboard players add start_time TickCount 1
# NEW PLAYER
execute as @a[x=-2015,y=99,z=-15,dx=30,dy=30,dz=30] run bossbar set tt:blue_wait players @a
execute as @a[x=-2015,y=99,z=-15,dx=30,dy=30,dz=30] run bossbar set tt:red_wait players @a
execute as @a[x=-2015,y=99,z=-15,dx=30,dy=30,dz=30] run bossbar set tt:preparation players @a
execute if score start_time TickCount matches 1.. run spawnpoint @a[team=blue_team,x=-2015,y=99,z=-15,dx=30,dy=30,dz=30] 0 105 -100
execute if score start_time TickCount matches 1.. run tp @a[team=blue_team,x=-2015,y=99,z=-15,dx=30,dy=30,dz=30] 0 105 -100
execute if score start_time TickCount matches 1.. run spawnpoint @a[team=red_team,x=-2015,y=99,z=-15,dx=30,dy=30,dz=30] 0 105 100
execute if score start_time TickCount matches 1.. run tp @a[team=red_team,x=-2015,y=99,z=-15,dx=30,dy=30,dz=30] 0 105 100
execute if score start_time TickCount matches 1.. run gamemode spectator @a[x=-2015,y=99,z=-15,dx=30,dy=30,dz=30]
execute if score start_time TickCount matches 1.. run tp @a[x=-2015,y=99,z=-15,dx=30,dy=30,dz=30] 0 125 0
# WELCOME
execute unless score start_time TickCount matches 1.. run function tt:ticked/welcome
# POOLS
scoreboard players add clone_delay TickCount 1
execute if score clone_delay TickCount matches 10..10 run function tt:clone_blue_pool
execute if score clone_delay TickCount matches 10..10 run function tt:clone_red_pool
execute if score clone_delay TickCount matches 20..20 run function tt:clone_blue_pool
execute if score clone_delay TickCount matches 20..20 run function tt:clone_red_pool
execute if score clone_delay TickCount matches 20..20 run scoreboard players set clone_delay TickCount 0
execute if score blue_immunity TickCount matches 0..0 run particle minecraft:poof 0 115 -100 1 1 1 0.1 2
execute if score blue_immunity TickCount matches 1.. run particle minecraft:large_smoke 0 115 -100 1 1 1 0.1 1
execute if score red_immunity TickCount matches 0..0 run particle minecraft:poof 0 115 100 1 1 1 0.1 2
execute if score red_immunity TickCount matches 1.. run particle minecraft:large_smoke 0 115 100 1 1 1 0.1 1
# SETBLOCK
setblock 0 103 100 minecraft:red_stained_glass
setblock 0 104 100 minecraft:air
setblock 0 105 100 minecraft:air
setblock 0 106 100 minecraft:air
setblock 0 103 -100 blue_stained_glass
setblock 0 104 -100 minecraft:air
setblock 0 105 -100 minecraft:air
setblock 0 106 -100 minecraft:air
# TP ANIM
execute if score current_tick TickCount matches 0..0 run function tt:ticked/spawn_anim
execute if score current_tick TickCount matches 5..5 run function tt:ticked/spawn_anim
execute if score current_tick TickCount matches 10..10 run function tt:ticked/spawn_anim
execute if score current_tick TickCount matches 15..15 run function tt:ticked/spawn_anim
# INCREMENT
scoreboard players add current_tick TickCount 1
execute if score current_tick TickCount matches 20.. run scoreboard players set current_tick TickCount 0
# EFFECT & WEAPONS
function tt:ticked/effects
function tt:ticked/weapons
# POINTS
execute if entity @a[x=-1,y=114,z=99,dx=3,dy=1,dz=3,team=blue_team,gamemode=survival] unless score red_immunity TickCount matches 1.. run function tt:blue_point
execute if score new_blue_point TickCount matches 18..18 run spreadplayers 0 100 2 20 false @e[type=firework_rocket,x=0,z=100]
execute if score new_blue_point TickCount matches 1.. run function tt:ticked/blue_cloud_ring
execute if score new_blue_point TickCount matches 1.. run scoreboard players remove new_blue_point TickCount 1
execute if entity @a[x=-1,y=114,z=-101,dx=3,dy=1,dz=3,team=red_team,gamemode=survival] unless score blue_immunity TickCount matches 1.. run function tt:red_point
execute if score new_red_point TickCount matches 18..18 run spreadplayers 0 -100 2 20 false @e[type=firework_rocket,x=0,z=-100]
execute if score new_red_point TickCount matches 1.. run function tt:ticked/red_cloud_ring
execute if score new_red_point TickCount matches 1.. run scoreboard players remove new_red_point TickCount 1
# RESPAWN
function tt:ticked/respawn
# ORES
function tt:ticked/ores
# DEFENSES
particle minecraft:end_rod 0 109 -88 1 1 0 0.01 3
effect give @a[x=-9,y=102,z=-105,dx=18,dy=7,dz=17,team=red_team] instant_damage 10
kill @e[type=fireball,x=-9,y=102,z=-105,dx=18,dy=7,dz=17]
kill @e[type=tnt,x=-9,y=102,z=-105,dx=18,dy=7,dz=17]
kill @e[type=tnt_minecart,x=-9,y=102,z=-105,dx=18,dy=7,dz=17]
kill @e[type=creeper,x=-9,y=102,z=-105,dx=18,dy=7,dz=17]
particle minecraft:end_rod 0 109 88 1 1 0 0.01 3
effect give @a[x=-9,y=102,z=88,dx=18,dy=7,dz=17,team=blue_team] instant_damage 10
kill @e[type=fireball,x=-9,y=102,z=88,dx=18,dy=7,dz=17]
kill @e[type=tnt,x=-9,y=102,z=88,dx=18,dy=7,dz=17]
kill @e[type=tnt_minecart,x=-9,y=102,z=88,dx=18,dy=7,dz=17]
kill @e[type=creeper,x=-9,y=102,z=88,dx=18,dy=7,dz=17]
particle minecraft:end_rod -2000 116 -59 1 1 0 0.01 3
# IMMUNITY
function tt:ticked/immunity
# COOKIES
function tt:ticked/empty
function tt:ticked/cookies
execute if score COOKIES Constants matches 1..1 run give @e[type=player,scores={empty_slot=1..1,deserve_cookie=1..}] minecraft:cookie{Enchantments:[{id:vanishing_curse,lvl:1}],display:{Name:"{\"text\":\"Back Cookie\",\"color\":\"gold\"}",Lore:["\"Eat or drop this cookie to be teleported to your\"","\"spawn base in the next 5 seconds\"","\"Your are unable to walk or to\"","\"deal damages during this period\"","\"ONLY works if you are not in the air\""]}}
scoreboard players remove @e[type=player,scores={empty_slot=1..1,deserve_cookie=1..}] deserve_cookie 1
# ZONE EFFECTS
effect give @a[x=-21,y=0,z=-118,dx=42,dy=250,dz=78,team=blue_team] minecraft:haste 2 1 true
effect give @a[x=-21,y=0,z=40,dx=42,dy=250,dz=78,team=red_team] minecraft:haste 2 1 true
effect give @a[x=-75,y=250,z=-200,dx=150,dy=6,dz=400] minecraft:wither 1 1 true
# TRAPS
function tt:ticked/traps
# TIMER
function tt:ticked/timer