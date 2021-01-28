# HOE OF RUSH

execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{Tags:"weapon1"}}}] run effect give @s minecraft:glowing 10 0 true

# SHOVEL OF HELL

execute if score fireball_cd_blue TickCount matches 1..1 at @a[team=blue_team,nbt={SelectedItem:{id:"minecraft:golden_shovel",tag:{Tags:"weapon2"}}}] run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 0.5
execute if score fireball_cd_blue TickCount matches 0..0 at @a[team=blue_team,nbt={SelectedItem:{id:"minecraft:golden_shovel",tag:{Tags:"weapon2"}}}] run particle minecraft:flame ~ ~ ~ 1 1 1 0.01 1
execute if score fireball_cd_red TickCount matches 1..1 at @a[team=red_team,nbt={SelectedItem:{id:"minecraft:golden_shovel",tag:{Tags:"weapon2"}}}] run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 0.5
execute if score fireball_cd_red TickCount matches 0..0 at @a[team=red_team,nbt={SelectedItem:{id:"minecraft:golden_shovel",tag:{Tags:"weapon2"}}}] run particle minecraft:flame ~ ~ ~ 1 1 1 0.01 1
execute if score fireball_cd_blue TickCount matches 1.. run scoreboard players remove fireball_cd_blue TickCount 1
execute if score fireball_cd_red TickCount matches 1.. run scoreboard players remove fireball_cd_red TickCount 1
execute as @a[scores={sneak=0,sneak_counter=80..}] if score @s sneak_counter matches 80.. run scoreboard players set @s throw_fb 1
execute as @a[team=blue_team,scores={throw_fb=1}] run scoreboard players set fireball_cd_blue TickCount 900
execute as @a[team=red_team,scores={throw_fb=1}] run scoreboard players set fireball_cd_red TickCount 900
execute at @a[scores={throw_fb=1}] run playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 1
execute as @a[scores={throw_fb=1}] run function tt:throw_fireball
# Sneak
execute as @a if score @s sneak matches 0..0 run scoreboard players reset @s sneak_counter
execute as @a if score @s sneak matches 1.. run scoreboard players add @s sneak_counter 1
execute as @a unless entity @s[nbt={SelectedItem:{id:"minecraft:golden_shovel",tag:{Tags:"weapon2"}}}] run scoreboard players reset @s sneak_counter
scoreboard players set @a sneak 0
execute as @a unless score @s sneak_counter matches 1.. run stopsound @s * minecraft:block.portal.trigger
execute if score fireball_cd_blue TickCount matches 1.. run scoreboard players reset @a[team=blue_team] sneak_counter
execute if score fireball_cd_red TickCount matches 1.. run scoreboard players reset @a[team=red_team] sneak_counter
execute at @e[type=fireball] run particle minecraft:flame ~ ~ ~ 0 0 0 0.05 20 force
# Sounds
execute at @a[scores={sneak_counter=20}] run playsound minecraft:block.portal.trigger master @a ~ ~ ~ 0.7 1.25
execute at @a[scores={sneak_counter=80}] run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.3
execute at @a[scores={sneak_counter=81}] run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.5
# Particles
execute at @a[scores={sneak_counter=10..}] run particle minecraft:lava ~ ~ ~ 1 1 1 0.2 1
# Bossbar
execute store result bossbar tt:shovel_blue value run scoreboard players get fireball_cd_blue TickCount
execute store result bossbar tt:shovel_red value run scoreboard players get fireball_cd_red TickCount
execute if score fireball_cd_blue TickCount matches 1.. run bossbar set tt:shovel_blue players @a[team=blue_team,nbt={SelectedItem:{id:"minecraft:golden_shovel",tag:{Tags:"weapon2"}}}]
execute if score fireball_cd_red TickCount matches 1.. run bossbar set tt:shovel_red players @a[team=red_team,nbt={SelectedItem:{id:"minecraft:golden_shovel",tag:{Tags:"weapon2"}}}]
execute if score fireball_cd_blue TickCount matches 1..1 run bossbar set tt:shovel_blue players
execute if score fireball_cd_red TickCount matches 1..1 run bossbar set tt:shovel_red players

# SWORD OF BALANCE

execute as @a[nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{Tags:"weapon3a"}}},team=blue_team] if score Blue scores < Red scores run replaceitem entity @s weapon.mainhand iron_sword{Tags:"weapon3b",Unbreakable:1b,RepairCost:500,display:{Name:"{\"text\":\"Sword of Balance [Damage x2]\",\"color\":\"dark_red\"}",Lore:["\"Resistance effect, double damage and fire aspect\"","\"with this weapon until you reach\"","\"the score of the opposing team\""]},Enchantments:[{id:knockback,lvl:1},{id:sharpness,lvl:1},{id:fire_aspect,lvl:1}],AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Slot:"mainhand",Amount:1,Operation:2,UUID:[I; 42883, 1689124593, -211178, -1562872105]},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Slot:"mainhand",Amount:-2.4,Operation:0,UUID:[I; 973, 907593, -2378, -1579105]},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Slot:"mainhand",Amount:6,Operation:0,UUID:[I; 99883, 1680133393, -974688, -1500002105]}]}

execute as @a[nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{Tags:"weapon3a"}}},team=red_team] if score Blue scores > Red scores run replaceitem entity @s weapon.mainhand iron_sword{Tags:"weapon3b",Unbreakable:1b,RepairCost:500,display:{Name:"{\"text\":\"Sword of Balance [Damage x2]\",\"color\":\"dark_red\"}",Lore:["\"Resistance effect, double damage and fire aspect\"","\"with this weapon until you reach\"","\"the score of the opposing team\""]},Enchantments:[{id:knockback,lvl:1},{id:sharpness,lvl:1},{id:fire_aspect,lvl:1}],AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Slot:"mainhand",Amount:1,Operation:2,UUID:[I; 42883, 1689124593, -211178, -1562872105]},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Slot:"mainhand",Amount:-2.4,Operation:0,UUID:[I; 943, 9073493, -237578, -15781105]},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Slot:"mainhand",Amount:6,Operation:0,UUID:[I; 98983, 1680133393, -974688, -1500002105]}]}

execute as @a[nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{Tags:"weapon3b"}}},team=blue_team] if score Blue scores >= Red scores run replaceitem entity @s weapon.mainhand iron_sword{Tags:"weapon3a",Unbreakable:1b,RepairCost:500,display:{Name:"{\"text\":\"Sword of Balance\",\"color\":\"red\"}",Lore:["\"Resistance effect, double damage and fire aspect\"","\"with this weapon if the opposing team\"","\"has scored more points than yours\""]},Enchantments:[{id:knockback,lvl:1},{id:sharpness,lvl:1}]}

execute as @a[nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{Tags:"weapon3b"}}},team=red_team] if score Blue scores <= Red scores run replaceitem entity @s weapon.mainhand iron_sword{Tags:"weapon3a",Unbreakable:1b,RepairCost:500,display:{Name:"{\"text\":\"Sword of Balance\",\"color\":\"red\"}",Lore:["\"Resistance effect, double damage and fire aspect\"","\"with this weapon if the opposing team\"","\"has scored more points than yours\""]},Enchantments:[{id:knockback,lvl:1},{id:sharpness,lvl:1}]}

execute as @a[nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{Tags:"weapon3b"}}}] run effect give @s minecraft:resistance 1 2 true