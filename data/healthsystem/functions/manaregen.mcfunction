execute if score @s mana < @s maxmana if entity @s run scoreboard players add @s manaregentimer 1
execute if score @s mana < @s maxmana if entity @s[scores={manaregentimer=600}] run scoreboard players operation @s mana += @s manaregen
execute if entity @s[scores={manaregentimer=600..}] run scoreboard players set @s manaregentimer 0