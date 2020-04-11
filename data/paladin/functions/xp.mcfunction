execute store result score @s xp run data get entity @s XpLevel

execute if score @s xp >= @s xpneeded run function paladin:levelup