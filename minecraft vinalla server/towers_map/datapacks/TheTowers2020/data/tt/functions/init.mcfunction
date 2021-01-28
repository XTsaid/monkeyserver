scoreboard objectives add TickCount dummy
scoreboard objectives add Constants dummy
scoreboard players set COOKIES Constants 1
scoreboard players set POINTS Constants 10
scoreboard players set IMMUNITY Constants 2400
scoreboard players set PREPARATION Constants 2400
scoreboard players set MAX_TIME Constants 288000
scoreboard players set SHOW_HEARTS Constants 1
scoreboard players set GM_NR Constants 1
scoreboard players set GM_DC Constants 1
defaultgamemode adventure
# Teams
team add blue_team "Blue Team"
team add red_team "Red Team"
team modify blue_team color blue
team modify red_team color red
# Scores
scoreboard objectives add scores dummy "Scores (/10)"
team join blue_team Blue
team join red_team Red
scoreboard objectives add deaths deathCount
scoreboard objectives setdisplay list deaths
# Weapons
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add sneak_counter dummy
scoreboard objectives add throw_fb dummy
bossbar add tt:shovel_blue {"text":"Shovel of Hell cooldown","color":"yellow"}
bossbar add tt:shovel_red {"text":"Shovel of Hell cooldown","color":"yellow"}
bossbar set tt:shovel_blue max 900
bossbar set tt:shovel_red max 900
bossbar set tt:shovel_blue color yellow
bossbar set tt:shovel_red color yellow
# Respawn
scoreboard objectives add instant_death deathCount
# Misc
scoreboard objectives add hearts health "HP"
scoreboard objectives modify hearts rendertype hearts
scoreboard objectives setdisplay belowName hearts
scoreboard objectives add back_cookie minecraft.used:minecraft.cookie
scoreboard objectives add back_cookie2 minecraft.dropped:minecraft.cookie
scoreboard objectives add back_delay dummy
scoreboard objectives add deserve_cookie dummy
scoreboard objectives add trapped dummy
scoreboard objectives add jump_completed dummy
scoreboard objectives add empty_slot dummy
# Immunity
bossbar add tt:blue_wait {"text":"Blue Team Immunity","bold":True,"color":"blue"}
bossbar add tt:red_wait {"text":"Red Team Immunity","bold":True,"color":"red"}
bossbar add tt:preparation {"text":"Preparation Phase","bold":True,"color":"white"}
bossbar set tt:blue_wait players @a
bossbar set tt:red_wait players @a
bossbar set tt:preparation players @a
bossbar set tt:blue_wait visible false
bossbar set tt:red_wait visible false
bossbar set tt:preparation visible false
# Welcome
scoreboard objectives add ready dummy "Ready players"
scoreboard objectives setdisplay sidebar ready
scoreboard objectives add jump minecraft.custom:minecraft.jump
# Timer
scoreboard objectives add timer dummy "Time left"
scoreboard players set Seconds Timer 0
scoreboard players set Minutes Timer 0
scoreboard players set Hours Timer 0
# Numbers
scoreboard objectives add num dummy
scoreboard players set i20 num 20
scoreboard players set i60 num 60
scoreboard players set i3600 num 3600