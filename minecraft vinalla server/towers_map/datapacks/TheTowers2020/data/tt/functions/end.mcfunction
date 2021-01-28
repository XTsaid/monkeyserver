execute if score Blue scores > Red scores run gamemode spectator @a
execute if score Blue scores > Red scores run title @a[team=blue_team] title {"text":"\u2666 Victory \u2666","bold":true,"color":"green"}
execute if score Blue scores > Red scores run title @a[team=red_team] title {"text":"\u2666 Defeat \u2666","bold":true,"color":"yellow"}
execute if score Blue scores > Red scores run title @a subtitle {"text":"Blue Team wins the game !"}
execute if score Blue scores > Red scores run playsound minecraft:ui.toast.challenge_complete master @a[team=!red_team] 0 130 0 200 0.8 1
execute if score Blue scores > Red scores run playsound minecraft:entity.ender_dragon.death master @a[team=red_team] 0 130 0 200 1.5 1

execute if score Red scores > Blue scores run gamemode spectator @a
execute if score Red scores > Blue scores run title @a[team=blue_team] title {"text":"\u2666 Defeat \u2666","bold":true,"color":"yellow"}
execute if score Red scores > Blue scores run title @a[team=red_team] title {"text":"\u2666 Victory \u2666","bold":true,"color":"green"}
execute if score Red scores > Blue scores run title @a subtitle {"text":"Red Team wins the game !"}
execute if score Red scores > Blue scores run playsound minecraft:ui.toast.challenge_complete master @a[team=!blue_team] 0 130 0 200 0.8 1
execute if score Red scores > Blue scores run playsound minecraft:entity.ender_dragon.death master @a[team=blue_team] 0 130 0 200 1.5 1

execute if score Blue scores = Red scores run gamemode spectator @a
execute if score Blue scores = Red scores run title @a title {"text":"\u2666 Tie Game \u2666","bold":true,"color":"white"}
execute if score Blue scores = Red scores run title @a subtitle {"text":"Both teams have the same score !"}
execute if score Blue scores = Red scores run playsound minecraft:ui.toast.challenge_complete master @a 0 130 0 200 0.8 1

bossbar set tt:blue_wait visible false
bossbar set tt:red_wait visible false
scoreboard players set blue_immunity TickCount 0
scoreboard players set red_immunity TickCount 0
scoreboard players set start_time TickCount 0
scoreboard objectives setdisplay sidebar scores
scoreboard objectives remove ready

tellraw @a {"text":"\u25ba Congratulations ! You finished The Towers 2020 !\nIf you want to see my other creations, click here","bold":true,"clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCvPnLFmgHf7_RwNP2DQtG3A"}}