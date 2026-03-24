execute if data storage .smgn:.xor {comparison:{result:[{15:1}]}} run scoreboard players add @s .result 1
execute if data storage .smgn:.xor {comparison:{result:[{14:1}]}} run scoreboard players add @s .result 2
execute if data storage .smgn:.xor {comparison:{result:[{13:1}]}} run scoreboard players add @s .result 4
execute if data storage .smgn:.xor {comparison:{result:[{12:1}]}} run scoreboard players add @s .result 8
execute if data storage .smgn:.xor {comparison:{result:[{11:1}]}} run scoreboard players add @s .result 16
execute if data storage .smgn:.xor {comparison:{result:[{10:1}]}} run scoreboard players add @s .result 32
execute if data storage .smgn:.xor {comparison:{result:[{9:1}]}} run scoreboard players add @s .result 64
execute if data storage .smgn:.xor {comparison:{result:[{8:1}]}} run scoreboard players add @s .result 128
execute if data storage .smgn:.xor {comparison:{result:[{7:1}]}} run scoreboard players add @s .result 256
execute if data storage .smgn:.xor {comparison:{result:[{6:1}]}} run scoreboard players add @s .result 512
execute if data storage .smgn:.xor {comparison:{result:[{5:1}]}} run scoreboard players add @s .result 1024
execute if data storage .smgn:.xor {comparison:{result:[{4:1}]}} run scoreboard players add @s .result 2048
execute if data storage .smgn:.xor {comparison:{result:[{3:1}]}} run scoreboard players add @s .result 4096
execute if data storage .smgn:.xor {comparison:{result:[{2:1}]}} run scoreboard players add @s .result 8192
execute if data storage .smgn:.xor {comparison:{result:[{1:1}]}} run scoreboard players add @s .result 16384
execute if data storage .smgn:.xor {comparison:{result:[{0:1}]}} run scoreboard players add @s .result 32768


tellraw @s ["",{score:{name:"@s",objective:"..factor_a.origin"}},{text:" XOR "},{score:{name:"@s",objective:"..factor_b.origin"}},{text:" = "},{score:{name:"@s",objective:".result"}},]