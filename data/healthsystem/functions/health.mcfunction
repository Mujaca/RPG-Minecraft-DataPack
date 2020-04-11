scoreboard players set @s updatestats 2
scoreboard players operation @s damage /= @s updatestats
scoreboard players operation @s health -= @s damage
scoreboard players set @s damage 0
execute as @s if score @s health <= @s null run function healthsystem:death