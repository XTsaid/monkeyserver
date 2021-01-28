effect give @a minecraft:speed 30 2 true
title @a times 0 200 40
difficulty normal
clear @a
scoreboard players set Blue scores 0
scoreboard players set Red scores 0
scoreboard objectives setdisplay sidebar scores
scoreboard players set start_time TickCount 1
scoreboard players set fireball_cd_blue TickCount 0
scoreboard players set fireball_cd_red TickCount 0
scoreboard players reset @a deaths
gamerule mobGriefing true
gamemode spectator @a
tp @a 0 130 0
tellraw @a {"text":"\u25ba Good luck to everyone !","bold":true}
gamemode survival @a[team=blue_team]
gamemode survival @a[team=red_team]
tp @a[team=blue_team] 0 104 -100
spawnpoint @a[team=blue_team] 0 104 -100
tp @a[team=red_team] 0 104 100
spawnpoint @a[team=red_team] 0 104 100
# Blue armor
replaceitem entity @e[type=player,team=blue_team] armor.feet leather_boots{display:{color:255},Enchantments:[{id:protection,lvl:2},{id:vanishing_curse,lvl:1}],Unbreakable:1b}
replaceitem entity @e[type=player,team=blue_team] armor.legs leather_leggings{display:{color:255},Enchantments:[{id:protection,lvl:2},{id:vanishing_curse,lvl:1}],Unbreakable:1b}
replaceitem entity @e[type=player,team=blue_team] armor.chest leather_chestplate{display:{color:255},Enchantments:[{id:protection,lvl:2},{id:vanishing_curse,lvl:1}],Unbreakable:1b}
replaceitem entity @e[type=player,team=blue_team] armor.head leather_helmet{display:{color:255},Enchantments:[{id:protection,lvl:2},{id:vanishing_curse,lvl:1}],Unbreakable:1b}
give @a[team=blue_team] minecraft:blue_stained_glass 15
# Red armor
replaceitem entity @e[type=player,team=red_team] armor.feet leather_boots{display:{color:16711680},Enchantments:[{id:protection,lvl:2},{id:vanishing_curse,lvl:1}],Unbreakable:1b}
replaceitem entity @e[type=player,team=red_team] armor.legs leather_leggings{display:{color:16711680},Enchantments:[{id:protection,lvl:2},{id:vanishing_curse,lvl:1}],Unbreakable:1b}
replaceitem entity @e[type=player,team=red_team] armor.chest leather_chestplate{display:{color:16711680},Enchantments:[{id:protection,lvl:2},{id:vanishing_curse,lvl:1}],Unbreakable:1b}
replaceitem entity @e[type=player,team=red_team] armor.head leather_helmet{display:{color:16711680},Enchantments:[{id:protection,lvl:2},{id:vanishing_curse,lvl:1}],Unbreakable:1b}
give @a[team=red_team] minecraft:red_stained_glass 15
# Global
give @a minecraft:baked_potato 5
# Bossbars
execute if score PREPARATION Constants matches 1.. run bossbar set tt:preparation visible true
execute store result bossbar tt:blue_wait max run scoreboard players get IMMUNITY Constants
execute store result bossbar tt:red_wait max run scoreboard players get IMMUNITY Constants
execute store result bossbar tt:preparation max run scoreboard players get PREPARATION Constants
bossbar set tt:blue_wait players @a
bossbar set tt:red_wait players @a
bossbar set tt:preparation players @a
execute store result bossbar tt:preparation value run scoreboard players get PREPARATION Constants
scoreboard players operation preparation TickCount = PREPARATION Constants