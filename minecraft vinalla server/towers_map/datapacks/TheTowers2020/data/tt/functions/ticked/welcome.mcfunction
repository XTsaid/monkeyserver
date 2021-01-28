gamemode adventure @a[x=-2015,y=99,z=-15,dx=30,dy=30,dz=30,gamemode=!adventure]
effect give @a minecraft:resistance 1 4 true
effect give @a minecraft:saturation 30 0 true
clear @a[x=-2010,y=115,z=-125,dx=20,dy=30,dz=20] minecraft:diamond_hoe
# Jump
execute at @a[team=blue_team,x=-2010,y=115,z=-125,dx=20,dy=30,dz=20,nbt={OnGround:1b}] run fill ~ ~-1 ~ ~ ~-4 ~ minecraft:blue_stained_glass replace minecraft:light_gray_stained_glass
execute at @a[team=blue_team,x=-2010,y=115,z=-125,dx=20,dy=30,dz=20,nbt={OnGround:1b}] run fill ~ ~-1 ~ ~ ~-4 ~ minecraft:blue_stained_glass replace minecraft:red_stained_glass
execute at @a[team=red_team,x=-2010,y=115,z=-125,dx=20,dy=30,dz=20,nbt={OnGround:1b}] run fill ~ ~-1 ~ ~ ~-4 ~ minecraft:red_stained_glass replace minecraft:light_gray_stained_glass
execute at @a[team=red_team,x=-2010,y=115,z=-125,dx=20,dy=30,dz=20,nbt={OnGround:1b}] run fill ~ ~-1 ~ ~ ~-4 ~ minecraft:red_stained_glass replace minecraft:blue_stained_glass
execute as @a[x=-2006,y=140,z=-107,dx=0,dy=0,dz=0,nbt={OnGround:1b}] unless score @s jump_completed matches 1.. run tellraw @a ["",{"text":"\u25ba ","color":"green"},{"selector":"@s"},{"text":" completed the jump ! Congratulations !","color":"green"}]
execute at @a[x=-2006,y=140,z=-107,dx=0,dy=0,dz=0,nbt={OnGround:1b}] unless score @p jump_completed matches 1.. run playsound minecraft:entity.player.levelup master @a ~ ~ ~
execute as @a[x=-2006,y=140,z=-107,dx=0,dy=0,dz=0,nbt={OnGround:1b}] run scoreboard players set @s jump_completed 1
# Teams
execute if score starting TickCount matches 0..0 run team join blue_team @a[x=-2006,y=106,z=-45,dx=3,dy=3,dz=3]
execute if score starting TickCount matches 0..0 run team join blue_team @a[x=-2005,y=115,z=-103,dx=2,dy=2,dz=2]
execute if score starting TickCount matches 0..0 run team join red_team @a[x=-1997,y=106,z=-45,dx=3,dy=3,dz=3]
execute if score starting TickCount matches 0..0 run team join red_team @a[x=-1997,y=115,z=-103,dx=2,dy=2,dz=2]
execute if score starting TickCount matches 0..0 run team leave @a[x=-2001,y=106,z=-55,dx=2,dy=2,dz=1]
execute if score starting TickCount matches 0..0 run team leave @a[x=-2001,y=115,z=-103,dx=2,dy=2,dz=2]
execute if score starting TickCount matches 0..0 run tp @a[x=-2001,y=106,z=-55,dx=2,dy=2,dz=1] -2000 116 -54
# Ready
execute as @a[scores={jump=1..},x=-2000,y=116,z=-115,dy=1] unless score @s ready matches 1..1 run scoreboard players set @s ready 2
execute as @a[scores={jump=1..},x=-2000,y=116,z=-115,dy=1] if score @s ready matches 1..1 run scoreboard players reset @s ready
scoreboard players set @a[scores={jump=1..}] jump 0
scoreboard players set @a[scores={ready=2}] ready 1
execute if score starting TickCount matches 0..0 run scoreboard players set starting TickCount 401
execute as @a unless score @s ready matches 1..1 if score starting TickCount matches 1..400 run playsound minecraft:entity.experience_orb.pickup master @a -2000 117 -115 2 0.5 1
execute as @a unless score @s ready matches 1..1 if score starting TickCount matches 1..400 run tellraw @a ["",{"text":"\u25ba A player is not ready, game starting stopped"}]
execute as @a unless score @s ready matches 1..1 if score starting TickCount matches 1..400 run function tt:unlock
execute as @a unless score @s ready matches 1..1 run scoreboard players set starting TickCount 0
execute unless entity @a[team=blue_team] run scoreboard players set starting TickCount 0
execute unless entity @a[team=red_team] run scoreboard players set starting TickCount 0
# Lock parameters
execute if score starting TickCount matches 401..401 run setblock -2001 115 -97 minecraft:air
execute if score starting TickCount matches 401..401 run setblock -2000 115 -97 minecraft:air
execute if score starting TickCount matches 401..401 run setblock -1999 115 -97 minecraft:air
execute if score starting TickCount matches 401..401 run setblock -2000 115 -81 minecraft:air
execute if score starting TickCount matches 401..401 run setblock -2001 115 -67 minecraft:air
execute if score starting TickCount matches 401..401 run setblock -1999 115 -67 minecraft:air
execute if score starting TickCount matches 401..401 run setblock -2001 106 -26 minecraft:air
execute if score starting TickCount matches 401..401 run setblock -1999 106 -26 minecraft:air
# Starting
execute if score starting TickCount matches 401..401 run title @a times 0 10 5
execute if score starting TickCount matches 401..401 run tellraw @a ["",{"text":"\u25ba All the players are ready !","bold":true},{"text":" Game starting in 20 seconds, teams and parameters are locked"}]
execute if score starting TickCount matches 401..401 run playsound minecraft:entity.experience_orb.pickup master @a -2000 117 -115 2 0.8 1
execute if score starting TickCount matches 101..101 run title @a title {"text":"\u25b6 5 \u25c0","bold":true}
execute if score starting TickCount matches 101..101 run playsound minecraft:entity.experience_orb.pickup master @a -2000 117 -115 2 1 1
execute if score starting TickCount matches 81..81 run title @a title {"text":"\u25b6 4 \u25c0","bold":true}
execute if score starting TickCount matches 81..81 run playsound minecraft:entity.experience_orb.pickup master @a -2000 117 -115 2 1 1
execute if score starting TickCount matches 61..61 run title @a title {"text":"\u25b6 3 \u25c0","bold":true}
execute if score starting TickCount matches 61..61 run playsound minecraft:entity.experience_orb.pickup master @a -2000 117 -115 2 1 1
execute if score starting TickCount matches 41..41 run title @a title {"text":"\u25b6 2 \u25c0","bold":true}
execute if score starting TickCount matches 41..41 run playsound minecraft:entity.experience_orb.pickup master @a -2000 117 -115 2 1 1
execute if score starting TickCount matches 21..21 run title @a title {"text":"\u25b6 1 \u25c0","bold":true}
execute if score starting TickCount matches 21..21 run playsound minecraft:entity.experience_orb.pickup master @a -2000 117 -115 2 1 1
execute if score starting TickCount matches 1..1 run title @a title {"text":"GO !","bold":true}
execute if score starting TickCount matches 1..1 run playsound minecraft:entity.experience_orb.pickup master @a -2000 117 -115 2 1.4 1
execute if score starting TickCount matches 1..1 run function tt:start_game
execute if score starting TickCount matches 1..1 run scoreboard players set starting TickCount -1
execute if score starting TickCount matches 2.. run scoreboard players remove starting TickCount 1
# Rules
execute if block -2001 115 -97 minecraft:lever[powered=true] if score SHOW_HEARTS Constants matches 0..0 run data merge block -2001 116 -97 {Text1:'{"text":"Show hearts","bold":true}',Text2:'{"text":"above players","bold":true}',Text3:'{"text":"ON","bold":true,"color":"green"}'}
execute if block -2001 115 -97 minecraft:lever[powered=true] if score SHOW_HEARTS Constants matches 0..0 run particle minecraft:poof -2001 116.5 -97 0 0 0 0.1 5
execute if block -2001 115 -97 minecraft:lever[powered=true] if score SHOW_HEARTS Constants matches 0..0 run scoreboard objectives setdisplay belowName hearts
execute if block -2001 115 -97 minecraft:lever[powered=true] if score SHOW_HEARTS Constants matches 0..0 run scoreboard players set SHOW_HEARTS Constants 1
execute if block -2001 115 -97 minecraft:lever[powered=false] if score SHOW_HEARTS Constants matches 1..1 run data merge block -2001 116 -97 {Text1:'{"text":"Show hearts","bold":true}',Text2:'{"text":"above players","bold":true}',Text3:'{"text":"OFF","bold":true,"color":"yellow"}'}
execute if block -2001 115 -97 minecraft:lever[powered=false] if score SHOW_HEARTS Constants matches 1..1 run particle minecraft:poof -2001 116.5 -97 0 0 0 0.1 2
execute if block -2001 115 -97 minecraft:lever[powered=false] if score SHOW_HEARTS Constants matches 1..1 run scoreboard objectives setdisplay belowName
execute if block -2001 115 -97 minecraft:lever[powered=false] if score SHOW_HEARTS Constants matches 1..1 run scoreboard players set SHOW_HEARTS Constants 0
#
#
#
execute if block -2000 115 -97 minecraft:lever[powered=true] if score GM_NR Constants matches 0..0 run gamerule naturalRegeneration true
execute if block -2000 115 -97 minecraft:lever[powered=true] if score GM_NR Constants matches 0..0 run data merge block -2000 116 -97 {Text1:'{"text":"Natural","bold":true}',Text2:'{"text":"Regeneration","bold":true}',Text3:'{"text":"ON","bold":true,"color":"green"}'}
execute if block -2000 115 -97 minecraft:lever[powered=true] if score GM_NR Constants matches 0..0 run particle minecraft:poof -2000 116.5 -97 0 0 0 0.1 5
execute if block -2000 115 -97 minecraft:lever[powered=true] if score GM_NR Constants matches 0..0 run scoreboard players set GM_NR Constants 1
execute if block -2000 115 -97 minecraft:lever[powered=false] if score GM_NR Constants matches 1..1 run gamerule naturalRegeneration false
execute if block -2000 115 -97 minecraft:lever[powered=false] if score GM_NR Constants matches 1..1 run data merge block -2000 116 -97 {Text1:'{"text":"Natural","bold":true}',Text2:'{"text":"Regeneration","bold":true}',Text3:'{"text":"OFF","bold":true,"color":"yellow"}'}
execute if block -2000 115 -97 minecraft:lever[powered=false] if score GM_NR Constants matches 1..1 run particle minecraft:poof -2000 116.5 -97 0 0 0 0.1 2
execute if block -2000 115 -97 minecraft:lever[powered=false] if score GM_NR Constants matches 1..1 run scoreboard players set GM_NR Constants 0
#
#
#
execute if block -1999 115 -97 minecraft:lever[powered=true] if score GM_DC Constants matches 0..0 run gamerule doDaylightCycle true
execute if block -1999 115 -97 minecraft:lever[powered=true] if score GM_DC Constants matches 0..0 run data merge block -1999 116 -97 {Text1:"",Text2:'{"text":"Enable Night","bold":true}',Text3:'{"text":"ON","bold":true,"color":"green"}'}
execute if block -1999 115 -97 minecraft:lever[powered=true] if score GM_DC Constants matches 0..0 run particle minecraft:poof -1999 116.5 -97 0 0 0 0.1 2
execute if block -1999 115 -97 minecraft:lever[powered=true] if score GM_DC Constants matches 0..0 run scoreboard players set GM_DC Constants 1
execute if block -1999 115 -97 minecraft:lever[powered=false] if score GM_DC Constants matches 1..1 run gamerule doDaylightCycle false
execute if block -1999 115 -97 minecraft:lever[powered=false] if score GM_DC Constants matches 1..1 run data merge block -1999 116 -97 {Text1:"",Text2:'{"text":"Enable Night","bold":true}',Text3:'{"text":"OFF","bold":true,"color":"yellow"}'}
execute if block -1999 115 -97 minecraft:lever[powered=false] if score GM_DC Constants matches 1..1 run time set noon
execute if block -1999 115 -97 minecraft:lever[powered=false] if score GM_DC Constants matches 1..1 run particle minecraft:poof -1999 116.5 -97 0 0 0 0.1 2
execute if block -1999 115 -97 minecraft:lever[powered=false] if score GM_DC Constants matches 1..1 run scoreboard players set GM_DC Constants 0
#
#
#
execute if block -2000 115 -81 minecraft:lever[powered=true] if score COOKIES Constants matches 0..0 run data merge block -2000 117 -81 {Text1:'{"text":"Back","bold":true}',Text2:'{"text":"Cookies","bold":true}',Text3:'{"text":"ON","bold":true,"color":"green"}'}
execute if block -2000 115 -81 minecraft:lever[powered=true] if score COOKIES Constants matches 0..0 run particle minecraft:poof -2000 117.5 -81 0 0 0 0.1 5
execute if block -2000 115 -81 minecraft:lever[powered=true] if score COOKIES Constants matches 0..0 run scoreboard players set COOKIES Constants 1
execute if block -2000 115 -81 minecraft:lever[powered=false] if score COOKIES Constants matches 1..1 run data merge block -2000 117 -81 {Text1:'{"text":"Back","bold":true}',Text2:'{"text":"Cookies","bold":true}',Text3:'{"text":"OFF","bold":true,"color":"yellow"}'}
execute if block -2000 115 -81 minecraft:lever[powered=false] if score COOKIES Constants matches 1..1 run particle minecraft:poof -2000 117.5 -81 0 0 0 0.1 2
execute if block -2000 115 -81 minecraft:lever[powered=false] if score COOKIES Constants matches 1..1 run scoreboard players set COOKIES Constants 0
#
#
#
execute if block -2001 115 -67 minecraft:stone_button[powered=true] if score PREPARATION Constants matches 0..0 run data merge block -2001 116 -67 {Text1:'{"text":"Preparation","bold":true}',Text2:'{"text":"lenght","bold":true}',Text3:'{"text":"2 minutes","bold":true,"color":"green"}'}
execute if block -2001 115 -67 minecraft:stone_button[powered=true] if score PREPARATION Constants matches 0..0 run scoreboard players set PREPARATION Constants 2401

execute if block -2001 115 -67 minecraft:stone_button[powered=true] if score PREPARATION Constants matches 2400..2400 run data merge block -2001 116 -67 {Text1:'{"text":"Preparation","bold":true}',Text2:'{"text":"lenght","bold":true}',Text3:'{"text":"5 minutes","bold":true,"color":"green"}'}
execute if block -2001 115 -67 minecraft:stone_button[powered=true] if score PREPARATION Constants matches 2400..2400 run scoreboard players set PREPARATION Constants 6001

execute if block -2001 115 -67 minecraft:stone_button[powered=true] if score PREPARATION Constants matches 6000..6000 run data merge block -2001 116 -67 {Text1:'{"text":"Preparation","bold":true}',Text2:'{"text":"lenght","bold":true}',Text3:'{"text":"OFF","bold":true,"color":"red"}'}
execute if block -2001 115 -67 minecraft:stone_button[powered=true] if score PREPARATION Constants matches 6000..6000 run scoreboard players set PREPARATION Constants 1

execute if score PREPARATION Constants matches 1..1 run scoreboard players set PREPARATION Constants 0
execute if score PREPARATION Constants matches 2401..2401 run scoreboard players set PREPARATION Constants 2400
execute if score PREPARATION Constants matches 6001..6001 run scoreboard players set PREPARATION Constants 6000

execute if block -2001 115 -67 minecraft:stone_button[powered=true] run particle minecraft:poof -2001 116.5 -67 0 0 0 0.1 2
execute if block -2001 115 -67 minecraft:stone_button[powered=true] run setblock -2001 115 -67 minecraft:stone_button[facing=south]
#
#
#
execute if block -1999 115 -67 minecraft:stone_button[powered=true] if score IMMUNITY Constants matches 0..0 run data merge block -1999 116 -67 {Text1:'{"text":"Immunity","bold":true}',Text2:'{"text":"lenght","bold":true}',Text3:'{"text":"2 minutes","bold":true,"color":"green"}'}
execute if block -1999 115 -67 minecraft:stone_button[powered=true] if score IMMUNITY Constants matches 0..0 run scoreboard players set IMMUNITY Constants 2401

execute if block -1999 115 -67 minecraft:stone_button[powered=true] if score IMMUNITY Constants matches 2400..2400 run data merge block -1999 116 -67 {Text1:'{"text":"Immunity","bold":true}',Text2:'{"text":"lenght","bold":true}',Text3:'{"text":"5 minutes","bold":true,"color":"green"}'}
execute if block -1999 115 -67 minecraft:stone_button[powered=true] if score IMMUNITY Constants matches 2400..2400 run scoreboard players set IMMUNITY Constants 6001

execute if block -1999 115 -67 minecraft:stone_button[powered=true] if score IMMUNITY Constants matches 6000..6000 run data merge block -1999 116 -67 {Text1:'{"text":"Immunity","bold":true}',Text2:'{"text":"lenght","bold":true}',Text3:'{"text":"OFF","bold":true,"color":"red"}'}
execute if block -1999 115 -67 minecraft:stone_button[powered=true] if score IMMUNITY Constants matches 6000..6000 run scoreboard players set IMMUNITY Constants 1

execute if score IMMUNITY Constants matches 1..1 run scoreboard players set IMMUNITY Constants 0
execute if score IMMUNITY Constants matches 2401..2401 run scoreboard players set IMMUNITY Constants 2400
execute if score IMMUNITY Constants matches 6001..6001 run scoreboard players set IMMUNITY Constants 6000

execute if block -1999 115 -67 minecraft:stone_button[powered=true] run particle minecraft:poof -1999 116.5 -67 0 0 0 0.1 2
execute if block -1999 115 -67 minecraft:stone_button[powered=true] run setblock -1999 115 -67 minecraft:stone_button[facing=south]
#
#
#
execute if block -2001 106 -26 minecraft:stone_button[powered=true] if score POINTS Constants matches 15..15 run data merge block -2001 107 -26 {Text1:"",Text2:'{"text":"Points","bold":true}',Text3:'{"text":"3","bold":true,"color":"aqua"}'}
execute if block -2001 106 -26 minecraft:stone_button[powered=true] if score POINTS Constants matches 15..15 run scoreboard players set POINTS Constants 4

execute if block -2001 106 -26 minecraft:stone_button[powered=true] if score POINTS Constants matches 3..3 run data merge block -2001 107 -26 {Text1:"",Text2:'{"text":"Points","bold":true}',Text3:'{"text":"6","bold":true,"color":"green"}'}
execute if block -2001 106 -26 minecraft:stone_button[powered=true] if score POINTS Constants matches 3..3 run scoreboard players set POINTS Constants 7

execute if block -2001 106 -26 minecraft:stone_button[powered=true] if score POINTS Constants matches 6..6 run data merge block -2001 107 -26 {Text1:"",Text2:'{"text":"Points","bold":true}',Text3:'{"text":"10","bold":true,"color":"yellow"}'}
execute if block -2001 106 -26 minecraft:stone_button[powered=true] if score POINTS Constants matches 6..6 run scoreboard players set POINTS Constants 11

execute if block -2001 106 -26 minecraft:stone_button[powered=true] if score POINTS Constants matches 10..10 run data merge block -2001 107 -26 {Text1:"",Text2:'{"text":"Points","bold":true}',Text3:'{"text":"15","bold":true,"color":"red"}'}
execute if block -2001 106 -26 minecraft:stone_button[powered=true] if score POINTS Constants matches 10..10 run scoreboard players set POINTS Constants 16

execute if score POINTS Constants matches 4..4 run scoreboard objectives modify scores displayname "Scores (/3)"
execute if score POINTS Constants matches 4..4 run scoreboard players set POINTS Constants 3
execute if score POINTS Constants matches 7..7 run scoreboard objectives modify scores displayname "Scores (/6)"
execute if score POINTS Constants matches 7..7 run scoreboard players set POINTS Constants 6
execute if score POINTS Constants matches 11..11 run scoreboard objectives modify scores displayname "Scores (/10)"
execute if score POINTS Constants matches 11..11 run scoreboard players set POINTS Constants 10
execute if score POINTS Constants matches 16..16 run scoreboard objectives modify scores displayname "Scores (/15)"
execute if score POINTS Constants matches 16..16 run scoreboard players set POINTS Constants 15

execute if block -2001 106 -26 minecraft:stone_button[powered=true] run particle minecraft:poof -2001 107.5 -26 0 0 0 0.1 2
execute if block -2001 106 -26 minecraft:stone_button[powered=true] run setblock -2001 106 -26 minecraft:stone_button[facing=south]
#
#
#
execute if block -1999 106 -26 minecraft:stone_button[powered=true] if score MAX_TIME Constants matches 288000..288000 run data merge block -1999 107 -26 {Text1:'{"text":"Game","bold":true}',Text2:'{"text":"max lenght","bold":true}',Text3:'{"text":"30 minutes","bold":true,"color":"aqua"}'}
execute if block -1999 106 -26 minecraft:stone_button[powered=true] if score MAX_TIME Constants matches 288000..288000 run scoreboard players set MAX_TIME Constants 36001

execute if block -1999 106 -26 minecraft:stone_button[powered=true] if score MAX_TIME Constants matches 36000..36000 run data merge block -1999 107 -26 {Text1:'{"text":"Game","bold":true}',Text2:'{"text":"max lenght","bold":true}',Text3:'{"text":"45 minutes","bold":true,"color":"green"}'}
execute if block -1999 106 -26 minecraft:stone_button[powered=true] if score MAX_TIME Constants matches 36000..36000 run scoreboard players set MAX_TIME Constants 54001

execute if block -1999 106 -26 minecraft:stone_button[powered=true] if score MAX_TIME Constants matches 54000..54000 run data merge block -1999 107 -26 {Text1:'{"text":"Game","bold":true}',Text2:'{"text":"max lenght","bold":true}',Text3:'{"text":"1 hour","bold":true,"color":"green"}'}
execute if block -1999 106 -26 minecraft:stone_button[powered=true] if score MAX_TIME Constants matches 54000..54000 run scoreboard players set MAX_TIME Constants 72001

execute if block -1999 106 -26 minecraft:stone_button[powered=true] if score MAX_TIME Constants matches 72000..72000 run data merge block -1999 107 -26 {Text1:'{"text":"Game","bold":true}',Text2:'{"text":"max lenght","bold":true}',Text3:'{"text":"2 hours","bold":true,"color":"yellow"}'}
execute if block -1999 106 -26 minecraft:stone_button[powered=true] if score MAX_TIME Constants matches 72000..72000 run scoreboard players set MAX_TIME Constants 144001

execute if block -1999 106 -26 minecraft:stone_button[powered=true] if score MAX_TIME Constants matches 144000..144000 run data merge block -1999 107 -26 {Text1:'{"text":"Game","bold":true}',Text2:'{"text":"max lenght","bold":true}',Text3:'{"text":"4 hours","bold":true,"color":"red"}'}
execute if block -1999 106 -26 minecraft:stone_button[powered=true] if score MAX_TIME Constants matches 144000..144000 run scoreboard players set MAX_TIME Constants 288001

execute if score MAX_TIME Constants matches 36001..36001 run scoreboard players set MAX_TIME Constants 36000
execute if score MAX_TIME Constants matches 54001..54001 run scoreboard players set MAX_TIME Constants 54000
execute if score MAX_TIME Constants matches 72001..72001 run scoreboard players set MAX_TIME Constants 72000
execute if score MAX_TIME Constants matches 144001..144001 run scoreboard players set MAX_TIME Constants 144000
execute if score MAX_TIME Constants matches 288001..288001 run scoreboard players set MAX_TIME Constants 288000

execute if block -1999 106 -26 minecraft:stone_button[powered=true] run particle minecraft:poof -1999 107.5 -26 0 0 0 0.1 2
execute if block -1999 106 -26 minecraft:stone_button[powered=true] run setblock -1999 106 -26 minecraft:stone_button[facing=south]