execute if score @s damagedealt > @s null as @a[distance=..4] if score @s damage < @s null store result score @s updatestats as @a[distance=..0] run scoreboard players get @s strength
execute if score @s damagedealt > @s null as @a[distance=..4] if score @s damage < @s null run scoreboard players operation @s updatestats -= @s defense
execute if score @s damagedealt > @s null as @a[distance=..4] if score @s damage < @s null if score @s updatestats <= @s null run scoreboard players set @s updatestats 0
execute if score @s damagedealt > @s null as @a[distance=..4] if score @s damage < @s null run scoreboard players operation @s damage += @s updatestats
execute if score @s damagedealt > @s null as @a[distance=..4] if score @s damage < @s null run scoreboard players set @s updatestats 0
scoreboard players set @s damagedealt 0