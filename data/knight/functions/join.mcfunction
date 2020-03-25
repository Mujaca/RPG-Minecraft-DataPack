tellraw @p ["",{"text":"Glückwunsch "},{"selector":"@s"},{"text":"! Du bist nun ein Ritter."}]
team join knight @s
scoreboard players reset @s job
scoreboard players reset @s klasse

scoreboard players set @s maxmana 100
scoreboard players set @s maxmana 100
scoreboard players set @s manaregen 5

scoreboard players set @s maxhealth 75
scoreboard players set @s updatestats 7
scoreboard players operation @s updatestats *= @s level
scoreboard players operation @s maxhealth += @s updatestats

scoreboard players set @s regen 3
scoreboard players set @s updatestats 1
scoreboard players operation @s updatestats *= @s level
scoreboard players operation @s regen += @s updatestats

scoreboard players set @s strength 8
scoreboard players set @s updatestats 3
scoreboard players operation @s updatestats *= @s level
scoreboard players operation @s strength += @s updatestats

scoreboard players set @s defense 4
scoreboard players set @s updatestats 1
scoreboard players operation @s updatestats *= @s level
scoreboard players operation @s defense += @s updatestats

scoreboard players set @s magicdefense 2
scoreboard players set @s updatestats 2
scoreboard players operation @s updatestats *= @s level
scoreboard players operation @s magicdefense += @s updatestats

scoreboard players set @s magicpower 1
scoreboard players set @s updatestats 2
scoreboard players operation @s updatestats *= @s level
scoreboard players operation @s magicpower += @s updatestats

execute store result score @s health run scoreboard players get @s maxhealth