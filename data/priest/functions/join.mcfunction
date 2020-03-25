tellraw @p ["",{"text":"Glückwunsch "},{"selector":"@s"},{"text":"! Du bist nun ein Priester."}]
team join priest @s
scoreboard players reset @s job
scoreboard players reset @s klasse

scoreboard players set @s maxmana 100
scoreboard players set @s maxmana 100
scoreboard players set @s manaregen 5

scoreboard players set @s maxhealth 150
scoreboard players set @s updatestats 15
scoreboard players operation @s updatestats *= @s level
scoreboard players operation @s maxhealth += @s updatestats

scoreboard players set @s regen 5
scoreboard players set @s updatestats 2
scoreboard players operation @s updatestats *= @s level
scoreboard players operation @s regen += @s updatestats

scoreboard players set @s strength 3
scoreboard players set @s updatestats 2
scoreboard players operation @s updatestats *= @s level
scoreboard players operation @s strength += @s updatestats

scoreboard players set @s defense 5
scoreboard players set @s updatestats 1
scoreboard players operation @s updatestats *= @s level
scoreboard players operation @s defense += @s updatestats

scoreboard players set @s magicdefense 7
scoreboard players set @s updatestats 5
scoreboard players operation @s updatestats *= @s level
scoreboard players operation @s magicdefense += @s updatestats

scoreboard players set @s magicpower 5
scoreboard players set @s updatestats 3
scoreboard players operation @s updatestats *= @s level
scoreboard players operation @s magicpower += @s updatestats

execute store result score @s health run scoreboard players get @s maxhealth