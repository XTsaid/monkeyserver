# Blue
replaceitem entity @e[type=player,scores={instant_death=1..},team=blue_team] armor.feet leather_boots{display:{color:255},Enchantments:[{id:protection,lvl:2},{id:vanishing_curse,lvl:1}],Unbreakable:1b}
replaceitem entity @e[type=player,scores={instant_death=1..},team=blue_team] armor.legs leather_leggings{display:{color:255},Enchantments:[{id:protection,lvl:2},{id:vanishing_curse,lvl:1}],Unbreakable:1b}
replaceitem entity @e[type=player,scores={instant_death=1..},team=blue_team] armor.chest leather_chestplate{display:{color:255},Enchantments:[{id:protection,lvl:2},{id:vanishing_curse,lvl:1}],Unbreakable:1b}
replaceitem entity @e[type=player,scores={instant_death=1..},team=blue_team] armor.head leather_helmet{display:{color:255},Enchantments:[{id:protection,lvl:2},{id:vanishing_curse,lvl:1}],Unbreakable:1b}
give @a[scores={instant_death=1..},team=blue_team] minecraft:blue_stained_glass 15
# Red
replaceitem entity @e[type=player,scores={instant_death=1..},team=red_team] armor.feet leather_boots{display:{color:16711680},Enchantments:[{id:protection,lvl:2},{id:vanishing_curse,lvl:1}],Unbreakable:1b}
replaceitem entity @e[type=player,scores={instant_death=1..},team=red_team] armor.legs leather_leggings{display:{color:16711680},Enchantments:[{id:protection,lvl:2},{id:vanishing_curse,lvl:1}],Unbreakable:1b}
replaceitem entity @e[type=player,scores={instant_death=1..},team=red_team] armor.chest leather_chestplate{display:{color:16711680},Enchantments:[{id:protection,lvl:2},{id:vanishing_curse,lvl:1}],Unbreakable:1b}
replaceitem entity @e[type=player,scores={instant_death=1..},team=red_team] armor.head leather_helmet{display:{color:16711680},Enchantments:[{id:protection,lvl:2},{id:vanishing_curse,lvl:1}],Unbreakable:1b}
give @a[scores={instant_death=1..},team=red_team] minecraft:red_stained_glass 15
# All
scoreboard players set @a[scores={instant_death=1..}] back_delay 0
scoreboard players set @a[scores={instant_death=1..}] back_cookie 0
scoreboard players set @a[scores={instant_death=1..}] back_cookie2 0
give @a[scores={instant_death=1..}] minecraft:baked_potato 5
scoreboard players set @e[type=player,scores={instant_death=1..}] instant_death 0