scoreboard players operation @s ..factor_a.copy = @s ..factor_a

execute store result storage .smgn:.xor factor_a.binary_temp int 1 run scoreboard players operation @s ..factor_a.copy %= @s .sample.2
data modify storage .smgn:.xor factor_a.binary prepend from storage .smgn:.xor factor_a.binary_temp
scoreboard players operation @s ..factor_a /= @s .sample.2


execute if score @s ..factor_a matches 1.. run return run function smgn:score/xor/operation/convert/factor/a/binary
execute if score @s ..factor_a matches ..0 run function smgn:score/xor/operation/convert/factor/a/octet