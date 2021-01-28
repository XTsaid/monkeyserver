# BIG TRAPS

execute at @e[type=item,nbt={Item:{id:"minecraft:music_disc_wait"},OnGround:1b}] if score start_time TickCount matches 1.. run summon minecraft:armor_stand ~ ~-1 ~ {NoGravity:1b,Invisible:1b,Small:1b,CustomName:"\"blue_trap\""}
execute at @e[type=item,nbt={Item:{id:"minecraft:music_disc_wait"},OnGround:1b}] run particle minecraft:poof ~ ~2 ~ 0 1 0 0.1 50
execute as @e[type=item,nbt={Item:{id:"minecraft:music_disc_wait"},OnGround:1b}] store result score @s tx run data get entity @s Pos[0]
execute as @e[type=item,nbt={Item:{id:"minecraft:music_disc_wait"},OnGround:1b}] store result score @s ty run data get entity @s Pos[1]
execute as @e[type=item,nbt={Item:{id:"minecraft:music_disc_wait"},OnGround:1b}] store result score @s tz run data get entity @s Pos[2]
execute as @e[type=item,nbt={Item:{id:"minecraft:music_disc_wait"},OnGround:1b}] run tellraw @a[team=blue_team] ["",{"text":"\u25ba","color":"blue"},{"text":" ","bold":true,"color":"blue"},{"text":"Blue Trap placed at :","bold":true,"underlined":true,"color":"white"},{"text":"\nX = "},{"score":{"name":"@s","objective":"tx"}},{"text":"\nY = "},{"score":{"name":"@s","objective":"ty"}},{"text":"\nZ = "},{"score":{"name":"@s","objective":"tz"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:music_disc_wait"},OnGround:1b}]
execute at @e[name=blue_trap] if entity @a[team=red_team,distance=..3] run tp @p ~ ~1 ~
execute at @e[name=blue_trap] if entity @a[team=red_team,distance=..3] run scoreboard players set @p[team=red_team] trapped 1
execute as @e[name=blue_trap] at @s if entity @a[team=red_team,distance=..3] run kill @s

execute at @e[type=item,nbt={Item:{id:"minecraft:music_disc_chirp"},OnGround:1b}] if score start_time TickCount matches 1.. run summon minecraft:armor_stand ~ ~-1 ~ {NoGravity:1b,Invisible:1b,Small:1b,CustomName:"\"red_trap\""}
execute at @e[type=item,nbt={Item:{id:"minecraft:music_disc_chirp"},OnGround:1b}] run particle minecraft:poof ~ ~2 ~ 0 1 0 0.1 50
execute as @e[type=item,nbt={Item:{id:"minecraft:music_disc_chirp"},OnGround:1b}] store result score @s tx run data get entity @s Pos[0]
execute as @e[type=item,nbt={Item:{id:"minecraft:music_disc_chirp"},OnGround:1b}] store result score @s ty run data get entity @s Pos[1]
execute as @e[type=item,nbt={Item:{id:"minecraft:music_disc_chirp"},OnGround:1b}] store result score @s tz run data get entity @s Pos[2]
execute as @e[type=item,nbt={Item:{id:"minecraft:music_disc_chirp"},OnGround:1b}] run tellraw @a[team=red_team] ["",{"text":"\u25ba","color":"red"},{"text":" ","bold":true,"color":"blue"},{"text":"Red Trap placed at :","bold":true,"underlined":true,"color":"white"},{"text":"\nX = "},{"score":{"name":"@s","objective":"tx"}},{"text":"\nY = "},{"score":{"name":"@s","objective":"ty"}},{"text":"\nZ = "},{"score":{"name":"@s","objective":"tz"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:music_disc_chirp"},OnGround:1b}]
execute at @e[name=red_trap] if entity @a[team=blue_team,distance=..3] run tp @p ~ ~1 ~
execute at @e[name=red_trap] if entity @a[team=blue_team,distance=..3] run scoreboard players set @p[team=blue_team] trapped 1
execute as @e[name=red_trap] at @s if entity @a[team=blue_team,distance=..3] run kill @s

execute if entity @a[scores={trapped=1}] run function tt:deploy_trap

# DETECTORS

execute at @e[type=item,nbt={Item:{id:"minecraft:music_disc_mall"},OnGround:1b}] if score start_time TickCount matches 1.. run summon minecraft:armor_stand ~ ~-1 ~ {NoGravity:1b,Invisible:1b,Small:1b,CustomName:"\"blue_detector\""}
execute at @e[type=item,nbt={Item:{id:"minecraft:music_disc_mall"},OnGround:1b}] run particle minecraft:poof ~ ~1 ~ 0 0 0 0.1 20
kill @e[type=item,nbt={Item:{id:"minecraft:music_disc_mall"},OnGround:1b}]
execute at @e[name=blue_detector] positioned ~ ~1.5 ~ if entity @a[team=red_team,distance=..1] run effect give @p[team=red_team] minecraft:glowing 30
execute at @e[name=blue_detector] positioned ~ ~1.5 ~ if entity @a[team=red_team,distance=..1] run effect give @p[team=red_team] minecraft:slowness 10 2
execute at @e[name=blue_detector] positioned ~ ~1.5 ~ if entity @a[team=red_team,distance=..1] run tellraw @a[team=!blue_team] ["",{"text":"\u25ba "},{"selector":"@p[team=red_team]"},{"text":" detected !"}]
execute at @e[name=blue_detector] positioned ~ ~1.5 ~ if entity @a[team=red_team,distance=..1] run particle minecraft:explosion ~ ~ ~ 0 0 0 1 2
execute at @e[name=blue_detector] positioned ~ ~1.5 ~ if entity @a[team=red_team,distance=..1] run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~-1 ~ 5 2
execute as @e[name=blue_detector] at @s positioned ~ ~1.5 ~ if entity @a[team=red_team,distance=..1] run kill @s

execute at @e[type=item,nbt={Item:{id:"minecraft:music_disc_blocks"},OnGround:1b}] if score start_time TickCount matches 1.. run summon minecraft:armor_stand ~ ~-1 ~ {NoGravity:1b,Invisible:1b,Small:1b,CustomName:"\"red_detector\""}
execute at @e[type=item,nbt={Item:{id:"minecraft:music_disc_blocks"},OnGround:1b}] run particle minecraft:poof ~ ~1 ~ 0 0 0 0.1 20
kill @e[type=item,nbt={Item:{id:"minecraft:music_disc_blocks"},OnGround:1b}]
execute at @e[name=red_detector] positioned ~ ~1.5 ~ if entity @a[team=blue_team,distance=..1] run effect give @p[team=blue_team] minecraft:glowing 30
execute at @e[name=red_detector] positioned ~ ~1.5 ~ if entity @a[team=blue_team,distance=..1] run effect give @p[team=blue_team] minecraft:slowness 10 2
execute at @e[name=red_detector] positioned ~ ~1.5 ~ if entity @a[team=blue_team,distance=..1] run tellraw @a[team=!red_team] ["",{"text":"\u25ba "},{"selector":"@p[team=blue_team]"},{"text":" detected !"}]
execute at @e[name=red_detector] positioned ~ ~1.5 ~ if entity @a[team=blue_team,distance=..1] run particle minecraft:explosion ~ ~ ~ 0 0 0 1 2
execute at @e[name=red_detector] positioned ~ ~1.5 ~ if entity @a[team=blue_team,distance=..1] run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~-1 ~ 5 2
execute as @e[name=red_detector] at @s positioned ~ ~1.5 ~ if entity @a[team=blue_team,distance=..1] run kill @s