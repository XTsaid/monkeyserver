execute if score start_time TickCount >= MAX_TIME Constants run function tt:end
# Display
execute if score start_time TickCount matches 1.. run scoreboard players add display_change TickCount 1
execute if score display_change TickCount matches 200..200 run scoreboard objectives setdisplay sidebar timer
execute if score display_change TickCount matches 400..400 run scoreboard objectives setdisplay sidebar scores
execute if score display_change TickCount matches 400..400 run scoreboard players set display_change TickCount 0
# Calcul
scoreboard players operation Seconds timer = MAX_TIME Constants
scoreboard players operation Seconds timer -= start_time TickCount
scoreboard players operation Seconds timer /= i20 num
scoreboard players operation Hours timer = Seconds timer
scoreboard players operation Hours timer /= i3600 num
scoreboard players operation Minutes timer = Seconds timer
scoreboard players operation Minutes timer %= i3600 num
scoreboard players operation Minutes timer /= i60 num
scoreboard players operation Seconds timer %= i60 num