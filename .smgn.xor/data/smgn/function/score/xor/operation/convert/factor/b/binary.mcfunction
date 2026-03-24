scoreboard players operation @s ..factor_b.copy = @s ..factor_b

execute store result storage .smgn:.xor factor_b.binary_temp int 1 run scoreboard players operation @s ..factor_b.copy %= @s .sample.2
data modify storage .smgn:.xor factor_b.binary prepend from storage .smgn:.xor factor_b.binary_temp
scoreboard players operation @s ..factor_b /= @s .sample.2


execute if score @s ..factor_b matches 1.. run return run function smgn:score/xor/operation/convert/factor/b/binary
execute if score @s ..factor_b matches ..0 run function smgn:score/xor/operation/convert/factor/b/octet