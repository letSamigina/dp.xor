data remove storage .smgn:.xor factor_a.binary
scoreboard players operation @s ..factor_a.origin = @s ..factor_a
function smgn:score/xor/operation/convert/factor/a/binary

data remove storage .smgn:.xor factor_b.binary
scoreboard players operation @s ..factor_b.origin = @s ..factor_b
function smgn:score/xor/operation/convert/factor/b/binary

data remove storage .smgn:.xor comparison
scoreboard players set @s .result 0
scoreboard players set @s .loop.count 0
data modify storage .smgn:.xor loop set value {count:0}
function smgn:score/xor/operation/comparison/ with storage .smgn:.xor loop