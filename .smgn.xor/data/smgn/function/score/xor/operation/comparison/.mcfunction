data modify storage .smgn:.xor binary_comparison.a set from storage .smgn:.xor factor_a.binary[0]
data modify storage .smgn:.xor binary_comparison.b set from storage .smgn:.xor factor_b.binary[0]

data remove storage .smgn:.xor factor_a.binary[0]
data remove storage .smgn:.xor factor_b.binary[0]

$execute if data storage .smgn:.xor {binary_comparison:{a:0}} if data storage .smgn:.xor {binary_comparison:{b:0}} run data modify storage .smgn:.xor comparison.result append value {$(count):0}
$execute if data storage .smgn:.xor {binary_comparison:{a:1}} if data storage .smgn:.xor {binary_comparison:{b:0}} run data modify storage .smgn:.xor comparison.result append value {$(count):1}
$execute if data storage .smgn:.xor {binary_comparison:{a:0}} if data storage .smgn:.xor {binary_comparison:{b:1}} run data modify storage .smgn:.xor comparison.result append value {$(count):1}
$execute if data storage .smgn:.xor {binary_comparison:{a:1}} if data storage .smgn:.xor {binary_comparison:{b:1}} run data modify storage .smgn:.xor comparison.result append value {$(count):0}

scoreboard players add @s .loop.count 1
execute store result storage .smgn:.xor loop.count int 1 run scoreboard players get @s .loop.count

execute unless data storage .smgn:.xor {factor_a:{binary:[]}} run return run function smgn:score/xor/operation/comparison/ with storage .smgn:.xor loop
execute if data storage .smgn:.xor {factor_a:{binary:[]}} run function smgn:score/xor/operation/comparison/decimal