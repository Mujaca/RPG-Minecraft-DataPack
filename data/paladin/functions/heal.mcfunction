tag @s remove selfheal
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:28}}}] run tag @s add selfheal
tag @s remove heal
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:29}}}] run tag @s add heal

execute if entity @s[tag=selfheal,scores={click=1..,mana=10..}] run scoreboard players operation @s health += @s magicpower
execute if entity @s[tag=selfheal,scores={click=1..,mana=10..}] run scoreboard players remove @s mana 10

execute if entity @s[tag=heal,scores={mana=10..,click=1..}] run tag @s add castetheal
execute if entity @s[tag=castetheal] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["healspell"]}
execute if entity @s[tag=castetheal] run tp @e[type=armor_stand,tag=healspell,distance=..1] @s
execute if entity @s[tag=castetheal] run scoreboard players set @e[type=minecraft:armor_stand,tag=healspell,distance=..1] updatestats 20
execute if entity @s[tag=castetheal] run scoreboard players remove @s mana 10
execute if entity @s[tag=castetheal] run scoreboard players operation @e[tag=healspell,distance=..1] damage += @s magicpower
execute if entity @s[tag=castetheal] run tag @s remove castetheal

execute as @e[type=armor_stand,tag=healspell] at @s run tp ^ ^ ^0.1
execute as @e[type=armor_stand,tag=healspell] at @s run particle minecraft:crit ~ ~ ~ 0 0 0 0.1 1 normal @a

execute as @e[type=minecraft:armor_stand,scores={updatestats=1..}] run scoreboard players remove @s updatestats 1
execute as @e[type=minecraft:armor_stand,scores={updatestats=0}] run kill @s

scoreboard players set @s click 0