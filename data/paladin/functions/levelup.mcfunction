scoreboard players add @s level 1
scoreboard players add @s skillpoints 1
scoreboard players add @s maxhealth 20
scoreboard players add @s regen 3
scoreboard players add @s maxmana 1
scoreboard players add @s manaregen 0
scoreboard players add @s strength 1
scoreboard players add @s defense 2
scoreboard players add @s magicdefense 3
scoreboard players add @s magicpower 1

execute store result score @s health run scoreboard players get @s maxhealth

scoreboard players add @s xpneeded 2
scoreboard players set @s xp 0
xp set @s 0 levels