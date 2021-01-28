scoreboard players add ores_count TickCount 1

# IRON
execute if score ores_count TickCount matches 600..600 unless block 0 107 0 iron_ore run playsound minecraft:block.fire.extinguish block @a 0 107 0
execute if score ores_count TickCount matches 600..600 unless block 18 113 0 iron_ore run playsound minecraft:block.fire.extinguish block @a 18 113 0
execute if score ores_count TickCount matches 600..600 unless block 18 120 0 iron_ore run playsound minecraft:block.fire.extinguish block @a 18 120 0
execute if score ores_count TickCount matches 600..600 unless block -18 113 0 iron_ore run playsound minecraft:block.fire.extinguish block @a -18 113 0
execute if score ores_count TickCount matches 600..600 unless block -18 120 0 iron_ore run playsound minecraft:block.fire.extinguish block @a -18 120 0
execute if score ores_count TickCount matches 1200..1200 unless block 0 107 0 iron_ore run playsound minecraft:block.fire.extinguish block @a 0 107 0
execute if score ores_count TickCount matches 1200..1200 unless block 18 113 0 iron_ore run playsound minecraft:block.fire.extinguish block @a 18 113 0
execute if score ores_count TickCount matches 1200..1200 unless block 18 120 0 iron_ore run playsound minecraft:block.fire.extinguish block @a 18 120 0
execute if score ores_count TickCount matches 1200..1200 unless block -18 113 0 iron_ore run playsound minecraft:block.fire.extinguish block @a -18 113 0
execute if score ores_count TickCount matches 1200..1200 unless block -18 120 0 iron_ore run playsound minecraft:block.fire.extinguish block @a -18 120 0
execute if score ores_count TickCount matches 600..600 unless block 0 107 0 iron_ore run particle minecraft:smoke 0 107 0 0.5 0.5 0.5 0.01 75
execute if score ores_count TickCount matches 600..600 unless block 18 113 0 iron_ore run particle minecraft:smoke 18 113 0 0.5 0.5 0.5 0.01 75
execute if score ores_count TickCount matches 600..600 unless block 18 120 0 iron_ore run particle minecraft:smoke 18 120 0 0.5 0.5 0.5 0.01 75
execute if score ores_count TickCount matches 600..600 unless block -18 113 0 iron_ore run particle minecraft:smoke -18 113 0 0.5 0.5 0.5 0.01 75
execute if score ores_count TickCount matches 600..600 unless block -18 120 0 iron_ore run particle minecraft:smoke -18 120 0 0.5 0.5 0.5 0.01 75
execute if score ores_count TickCount matches 1200..1200 unless block 0 107 0 iron_ore run particle minecraft:smoke 0 107 0 0.5 0.5 0.5 0.01 75
execute if score ores_count TickCount matches 1200..1200 unless block 18 113 0 iron_ore run particle minecraft:smoke 18 113 0 0.5 0.5 0.5 0.01 75
execute if score ores_count TickCount matches 1200..1200 unless block 18 120 0 iron_ore run particle minecraft:smoke 18 120 0 0.5 0.5 0.5 0.01 75
execute if score ores_count TickCount matches 1200..1200 unless block -18 113 0 iron_ore run particle minecraft:smoke -18 113 0 0.5 0.5 0.5 0.01 75
execute if score ores_count TickCount matches 1200..1200 unless block -18 120 0 iron_ore run particle minecraft:smoke -18 120 0 0.5 0.5 0.5 0.01 75
execute if score ores_count TickCount matches 600..600 run setblock 0 107 0 iron_ore
execute if score ores_count TickCount matches 600..600 run setblock 18 113 0 iron_ore
execute if score ores_count TickCount matches 600..600 run setblock 18 120 0 iron_ore
execute if score ores_count TickCount matches 600..600 run setblock -18 113 0 iron_ore
execute if score ores_count TickCount matches 600..600 run setblock -18 120 0 iron_ore
execute if score ores_count TickCount matches 1200..1200 run setblock 0 107 0 iron_ore
execute if score ores_count TickCount matches 1200..1200 run setblock 18 113 0 iron_ore
execute if score ores_count TickCount matches 1200..1200 run setblock 18 120 0 iron_ore
execute if score ores_count TickCount matches 1200..1200 run setblock -18 113 0 iron_ore
execute if score ores_count TickCount matches 1200..1200 run setblock -18 120 0 iron_ore

# GOLD
execute if score ores_count TickCount matches 400..400 unless block -18 107 0 gold_ore run playsound minecraft:block.fire.extinguish block @a -18 107 0
execute if score ores_count TickCount matches 800..800 unless block -18 107 0 gold_ore run playsound minecraft:block.fire.extinguish block @a -18 107 0
execute if score ores_count TickCount matches 1200..1200 unless block -18 107 0 gold_ore run playsound minecraft:block.fire.extinguish block @a -18 107 0
execute if score ores_count TickCount matches 400..400 unless block -18 107 0 gold_ore run particle minecraft:smoke -18 107 0 0.5 0.5 0.5 0.01 75
execute if score ores_count TickCount matches 800..800 unless block -18 107 0 gold_ore run particle minecraft:smoke -18 107 0 0.5 0.5 0.5 0.01 75
execute if score ores_count TickCount matches 1200..1200 unless block -18 107 0 gold_ore run particle minecraft:smoke -18 107 0 0.5 0.5 0.5 0.01 75
execute if score ores_count TickCount matches 400..400 run setblock -18 107 0 gold_ore
execute if score ores_count TickCount matches 800..800 run setblock -18 107 0 gold_ore
execute if score ores_count TickCount matches 1200..1200 run setblock -18 107 0 gold_ore

# DIAMOND
execute if score ores_count TickCount matches 1200..1200 unless block 18 107 0 diamond_ore run playsound minecraft:block.fire.extinguish block @a 18 107 0
execute if score ores_count TickCount matches 1200..1200 unless block 18 107 0 diamond_ore run particle minecraft:smoke 18 107 0 0.5 0.5 0.5 0.01 75
execute if score ores_count TickCount matches 1200..1200 run setblock 18 107 0 diamond_ore

# NETHERITE
execute if score ores_count TickCount matches 600..600 unless block 0 120 0 ancient_debris run playsound minecraft:block.fire.extinguish block @a 0 120 0
execute if score ores_count TickCount matches 600..600 unless block 0 120 0 ancient_debris run particle minecraft:smoke 0 120 0 0.5 0.5 0.5 0.01 75
execute if score ores_count TickCount matches 1200..1200 unless block 0 120 0 ancient_debris run playsound minecraft:block.fire.extinguish block @a 0 120 0
execute if score ores_count TickCount matches 1200..1200 unless block 0 120 0 ancient_debris run particle minecraft:smoke 0 120 0 0.5 0.5 0.5 0.01 75
execute if score ores_count TickCount matches 600..600 run setblock 0 120 0 ancient_debris
execute if score ores_count TickCount matches 1200..1200 run setblock 0 120 0 ancient_debris

# Count
execute if score ores_count TickCount matches 1200.. run scoreboard players set ores_count TickCount 0