echo off

set "destination=C:\Users\said\Desktop\cs\minecraft_git\monkeyserver\serverworld"

cd %destination%
set "time1=%time%"
set time1=%time1::=.%
set "fold=new_folder_%time1%"
 
mkdir %fold% 

set "destination=C:\Users\said\Desktop\cs\minecraft_git\monkeyserver\serverworld\%fold%"
set "source=C:\Users\said\AppData\Roaming\.minecraft\saves\world_server_use"
robocopy "%source%" "%destination%" /mir

exit