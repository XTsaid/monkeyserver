execute at @a[scores={trapped=1}] run playsound minecraft:item.totem.use master @a ~ ~1 ~ 2 0.7
tellraw @a ["",{"text":"\u25ba "},{"selector":"@a[scores={trapped=1}]"},{"text":" got trapped !"}]
execute at @a[scores={trapped=1}] run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:stone_bricks destroy
execute at @a[scores={trapped=1}] run fill ~-2 ~3 ~-2 ~2 ~3 ~2 minecraft:smooth_stone_slab[type=double] destroy
execute at @a[scores={trapped=1}] run fill ~-2 ~ ~-2 ~-2 ~2 ~1 minecraft:iron_bars destroy
execute at @a[scores={trapped=1}] run fill ~-2 ~ ~2 ~1 ~2 ~2 minecraft:iron_bars destroy
execute at @a[scores={trapped=1}] run fill ~2 ~ ~2 ~2 ~2 ~-1 minecraft:iron_bars destroy
execute at @a[scores={trapped=1}] run fill ~2 ~ ~-2 ~-1 ~2 ~-2 minecraft:iron_bars destroy
execute at @a[scores={trapped=1}] run setblock ~-1 ~ ~-1 minecraft:cobweb destroy
execute at @a[scores={trapped=1}] run setblock ~1 ~ ~-1 minecraft:cobweb destroy
execute at @a[scores={trapped=1}] run setblock ~-1 ~ ~1 minecraft:cobweb destroy
execute at @a[scores={trapped=1}] run setblock ~1 ~ ~1 minecraft:cobweb destroy
execute at @a[scores={trapped=1}] run setblock ~-1 ~1 ~ minecraft:cobweb destroy
execute at @a[scores={trapped=1}] run setblock ~ ~1 ~-1 minecraft:cobweb destroy
execute at @a[scores={trapped=1}] run setblock ~1 ~1 ~ minecraft:cobweb destroy
execute at @a[scores={trapped=1}] run setblock ~ ~1 ~1 minecraft:cobweb destroy
execute at @a[scores={trapped=1}] run setblock ~-1 ~2 ~-1 minecraft:cobweb destroy
execute at @a[scores={trapped=1}] run setblock ~1 ~2 ~-1 minecraft:cobweb destroy
execute at @a[scores={trapped=1}] run setblock ~-1 ~2 ~1 minecraft:cobweb destroy
execute at @a[scores={trapped=1}] run setblock ~1 ~2 ~1 minecraft:cobweb destroy
execute at @a[scores={trapped=1}] run setblock ~ ~2 ~ minecraft:cobweb destroy
effect give @a[scores={trapped=1}] minecraft:mining_fatigue 15 1

execute as @a[scores={trapped=1}] run scoreboard players set @s trapped 0