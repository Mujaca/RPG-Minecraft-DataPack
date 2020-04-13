summon zombie ~ ~ ~ {OnGround:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["Leiche"],CustomName:"{\"text\":\"Leiche\",\"color\":\"yellow\"}"}
gamemode spectator @s
tag @s add dead
scoreboard players set @s corpsetime 1200
scoreboard players set @s revivetime 100
scoreboard players add current corpseid 1
execute as @s store result score @s corpseid run scoreboard players get current corpseid
execute as @s store result score @e[type=zombie,distance=..10,tag=Leiche,tag=!gotid] corpseid run scoreboard players get current corpseid
execute as @s run tag @e[type=zombie,distance=..10,tag=Leiche,tag=!gotid] add gotid
execute store result score @s health run scoreboard players get @s maxhealth