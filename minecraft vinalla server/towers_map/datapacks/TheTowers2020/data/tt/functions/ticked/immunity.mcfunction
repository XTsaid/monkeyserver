# Global
execute if score preparation TickCount matches 1..1 run bossbar set tt:preparation visible false
execute if score preparation TickCount matches 1..1 run playsound minecraft:block.anvil.destroy master @a 0 130 0 1 1.5 1
execute if score preparation TickCount matches 1..1 run tellraw @a {"text":"\u25ba Preparation Phase is over !","bold":true,"underlined":true}
execute if score preparation TickCount matches 1.. run scoreboard players remove preparation TickCount 1
execute store result bossbar tt:preparation value run scoreboard players get preparation TickCount
execute if score preparation TickCount matches 1.. run tp @a[x=-75,y=0,z=-20,dx=150,dy=255,dz=40,team=blue_team] 0 104 -100
execute if score preparation TickCount matches 1.. run tp @a[x=-75,y=0,z=-20,dx=150,dy=255,dz=40,team=red_team] 0 104 100
execute if score preparation TickCount matches 1.. run kill @e[type=arrow,x=-75,y=0,z=-20,dx=150,dy=255,dz=40]
execute if score preparation TickCount matches 1.. run kill @e[type=small_fireball,x=-75,y=0,z=-20,dx=150,dy=255,dz=40]
execute if score preparation TickCount matches 1.. run kill @e[type=fireball,x=-75,y=0,z=-20,dx=150,dy=255,dz=40]
# Blue
execute if score blue_immunity TickCount matches 1..1 run bossbar set tt:blue_wait visible false
execute if score blue_immunity TickCount matches 1..1 run playsound minecraft:block.anvil.destroy master @a 0 116 -100 1 2 1
execute if score blue_immunity TickCount matches 1.. run scoreboard players remove blue_immunity TickCount 1
execute store result bossbar tt:blue_wait value run scoreboard players get blue_immunity TickCount
execute if score blue_immunity TickCount matches 1.. run effect give @a[x=-1,y=114,z=-101,dx=3,dy=1,dz=3,team=red_team] minecraft:instant_damage
# Red
execute if score red_immunity TickCount matches 1..1 run bossbar set tt:red_wait visible false
execute if score red_immunity TickCount matches 1..1 run playsound minecraft:block.anvil.destroy master @a 0 116 100 1 2 1
execute if score red_immunity TickCount matches 1.. run scoreboard players remove red_immunity TickCount 1
execute store result bossbar tt:red_wait value run scoreboard players get red_immunity TickCount
execute if score red_immunity TickCount matches 1.. run effect give @a[x=-1,y=114,z=99,dx=3,dy=1,dz=3,team=blue_team] minecraft:instant_damage