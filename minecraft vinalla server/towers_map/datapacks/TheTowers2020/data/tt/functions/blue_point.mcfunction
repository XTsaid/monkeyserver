scoreboard players add Blue scores 1
scoreboard players add @a deserve_cookie 1
scoreboard players operation red_immunity TickCount = IMMUNITY Constants
scoreboard players set blue_immunity TickCount 0
execute if score red_immunity TickCount matches 1.. run bossbar set tt:red_wait visible true
bossbar set tt:blue_wait visible false
bossbar set tt:red_wait players @a
execute if score Blue scores >= POINTS Constants run function tt:end
tp @r[x=-1,y=114,z=99,dx=3,dy=1,dz=3,team=blue_team,gamemode=survival] 0 104 -100

summon lightning_bolt 0 114 100

summon firework_rocket 0 1 100 {Silent:1,LifeTime:5,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:0,Trail:0,Colors:[I;2437522],FadeColors:[I;2651799]}]}}}}

summon firework_rocket 0 1 100 {Silent:1,LifeTime:10,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:1,Trail:0,Colors:[I;2437522],FadeColors:[I;2651799]}]}}}}

summon firework_rocket 0 1 100 {Silent:1,LifeTime:10,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:0,Flicker:1,Trail:0,Colors:[I;2437522],FadeColors:[I;2651799]}]}}}}

summon firework_rocket 0 1 100 {Silent:1,LifeTime:25,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:2,Flicker:0,Trail:0,Colors:[I;2437522],FadeColors:[I;2651799]}]}}}}

summon firework_rocket 0 1 100 {Silent:1,LifeTime:25,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:1,Trail:1,Colors:[I;2437522],FadeColors:[I;2651799]}]}}}}

summon firework_rocket 0 1 100 {Silent:1,LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;2437522],FadeColors:[I;2651799]}]}}}}

summon firework_rocket 0 1 100 {Silent:1,LifeTime:25,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:1,Trail:0,Colors:[I;2437522],FadeColors:[I;2651799]}]}}}}

summon firework_rocket 0 1 100 {Silent:1,LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:2,Flicker:0,Trail:1,Colors:[I;2437522],FadeColors:[I;2651799]}]}}}}

summon firework_rocket 0 1 100 {Silent:1,LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:0,Flicker:1,Trail:0,Colors:[I;2437522],FadeColors:[I;2651799]}]}}}}

summon firework_rocket 0 1 100 {Silent:1,LifeTime:35,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:0,Trail:1,Colors:[I;2437522],FadeColors:[I;2651799]}]}}}}

summon firework_rocket 0 1 100 {Silent:1,LifeTime:40,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:0,Flicker:1,Trail:0,Colors:[I;2437522],FadeColors:[I;2651799]}]}}}}

summon firework_rocket 0 1 100 {Silent:1,LifeTime:5,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:0,Trail:0,Colors:[I;2437522],FadeColors:[I;2651799]}]}}}}

summon firework_rocket 0 1 100 {Silent:1,LifeTime:10,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:1,Trail:0,Colors:[I;2437522],FadeColors:[I;2651799]}]}}}}

summon firework_rocket 0 1 100 {Silent:1,LifeTime:25,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:2,Flicker:0,Trail:0,Colors:[I;2437522],FadeColors:[I;2651799]}]}}}}

summon firework_rocket 0 1 100 {Silent:1,LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;2437522],FadeColors:[I;2651799]}]}}}}

summon firework_rocket 0 1 100 {Silent:1,LifeTime:25,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:1,Trail:0,Colors:[I;2437522],FadeColors:[I;2651799]}]}}}}

summon firework_rocket 0 1 100 {Silent:1,LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:2,Flicker:0,Trail:1,Colors:[I;2437522],FadeColors:[I;2651799]}]}}}}

summon firework_rocket 0 1 100 {Silent:1,LifeTime:35,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:0,Trail:1,Colors:[I;2437522],FadeColors:[I;2651799]}]}}}}

summon firework_rocket 0 1 100 {Silent:1,LifeTime:40,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:0,Flicker:1,Trail:0,Colors:[I;2437522],FadeColors:[I;2651799]}]}}}}

playsound entity.zombie_villager.cure master @a 0 120 100 50 1.2 1
execute as @a[team=red_team] run playsound block.end_portal.spawn master @s ~ ~ ~ 2 1.5 1
execute as @a[team=blue_team] run playsound entity.wither.spawn master @s ~ ~ ~ 2 2 1

scoreboard players set new_blue_point TickCount 20