execute if score @s damage > @s null run tag @s add damagetaken

execute as @s[tag=damagetaken] at @s run scoreboard players add @s damagetimer 1
execute as @s[tag=damagetaken,scores={damagetimer=200}] at @s run tag @s remove damagetaken
execute as @s[scores={damagetimer=200}] at @s run scoreboard players set @s damagetimer 0


execute if score @s health < @s maxhealth if entity @s[tag=!damagetaken] run scoreboard players add @s regentimer 1
execute if score @s health < @s maxhealth if entity @s[tag=!damagetaken,scores={regentimer=100}] run scoreboard players operation @s health += @s regen
execute if entity @s[tag=!damagetaken,scores={regentimer=100..}] run scoreboard players set @s regentimer 0