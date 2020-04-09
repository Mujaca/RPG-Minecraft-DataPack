execute if entity @s[tag=meteorstaff,scores={mana=100..,level=13..,meteorcooldown=0,click=1..}] run tag @s add castetmeteorstaff
execute if entity @s[tag=castetmeteorstaff] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["meteorspell"]}
execute if entity @s[tag=castetmeteorstaff] run tp @e[type=armor_stand,tag=meteorspell,distance=..1] @s
execute if entity @s[tag=castetmeteorstaff] as @e[type=armor_stand,tag=meteorspell,distance=..1] at @s run tp ~ ~2 ~
execute if entity @s[tag=castetmeteorstaff] run scoreboard players set @s meteorcooldown 600
execute if entity @s[tag=castetmeteorstaff] run scoreboard players remove @s mana 100
execute if entity @s[tag=castetmeteorstaff] if entity @s[tag=castetmeteorstaff,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:13}}}] run scoreboard players set @e[type=minecraft:armor_stand,tag=meteorspell,distance=..1] damage 30
execute if entity @s[tag=castetmeteorstaff] if entity @s[tag=castetmeteorstaff,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:14}}}] run scoreboard players set @e[type=minecraft:armor_stand,tag=meteorspell,distance=..1] damage 40
execute if entity @s[tag=castetmeteorstaff] if entity @s[tag=castetmeteorstaff,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:15}}}] run scoreboard players set @e[type=minecraft:armor_stand,tag=meteorspell,distance=..1] damage 50
execute if entity @s[tag=castetmeteorstaff] if entity @s[tag=castetmeteorstaff] run scoreboard players operation @e[type=minecraft:armor_stand,tag=meteorspell,distance=..1] damage += @s damage
execute if entity @s[tag=castetmeteorstaff] run tag @s remove castetmeteorstaff

execute as @e[type=minecraft:armor_stand,tag=meteorspell] at @s if block ~ ~-1 ~ air run tp ^ ^ ^0.4

execute as @e[type=armor_stand,tag=meteorspell] unless block ~ ~-1 ~ air run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["meteor"]}
execute as @e[type=armor_stand,tag=meteorspell] at @s unless block ~ ~-1 ~ air as @e[type=armor_stand,tag=meteor,distance=..1] store success score @s damage as @e[type=armor_stand,tag=meteorspell,distance=..1] run scoreboard players get @s damage
execute as @e[type=armor_stand,tag=meteorspell] at @s unless block ~ ~-1 ~ air as @e[type=armor_stand,tag=meteor,distance=..1] run tp ~ ~50 ~
execute as @e[type=armor_stand,tag=meteorspell] at @s run kill @s

execute as @e[type=armor_stand,tag=meteor] at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~
execute as @e[type=armor_stand,tag=meteor] at @s unless block ~ ~-1 ~ air store result score @a[distance=..10] damage run scoreboard players get @s damage
execute as @e[type=armor_stand,tag=meteor] at @s unless block ~ ~-1 ~ air run kill @s
 
execute as @e[type=armor_stand,tag=meteorspell,scores={meteorcooldown=1000..}] run kill @s
execute as @e[type=armor_stand,tag=meteorspell] unless block ~ ~-1 ~ air run scoreboard players add @s meteorcooldown 1

execute as @e[type=armor_stand,tag=metero] at @s run particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 2 force @a 
execute as @e[type=minecraft:armor_stand,tag=meteorspell] at @s run particle minecraft:crit ~ ~ ~ 0 0 0 0.1 2 force @a

execute if score @s meteorcooldown > @s null run scoreboard players remove @s meteorcooldown 1