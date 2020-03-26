execute if entity @s[tag=thunderstaff,scores={mana=60..,level=9..,thundercooldown=0,click=1..}] run tag @s add castetthunder
execute if entity @s[tag=castetthunder] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["thunderspell"]}
execute if entity @s[tag=castetthunder] run tp @e[type=armor_stand,tag=thunderspell,distance=..1] @s
execute if entity @s[tag=castetthunder] run scoreboard players set @s thundercooldown 1200
execute if entity @s[tag=castetthunder] run scoreboard players remove @s mana 15
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:10}}},tag=castetthunder] run scoreboard players set @e[tag=thunderspell,distance=..1] damage 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:11}}},tag=castetthunder] run scoreboard players set @e[tag=thunderspell,distance=..1] damage 2
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:12}}},tag=castetthunder] run scoreboard players set @e[tag=thunderspell,distance=..1] damage 3
execute if entity @s[tag=castetthunder] run scoreboard players operation @e[tag=thunderspell,distance=..1] damage += @s magicpower
execute if entity @s[tag=castetthunder] run tag @s remove castetthunder

execute as @e[type=armor_stand,tag=thunderspell] at @s run tp ^ ^ ^0.3
execute as @e[type=armor_stand,tag=thunderspell] at @s run particle minecraft:cloud ~ ~ ~ 0 0 0 0.1 1 force @a

execute if score @s thundercooldown > @s null run scoreboard players remove @s thundercooldown 1
execute as @e[type=armor_stand,tag=thunderspell] run scoreboard players add @s thundercooldown 1
execute as @e[type=armor_stand,tag=thunderspell,scores={thundercooldown=400..}] run kill @s

execute if entity @s[scores={thundercooldown=0}] if entity @e[tag=thunderspell,type=armor_stand,distance=..2,scores={damage=1}] run summon minecraft:lightning_bolt ~ ~ ~
execute if entity @s[scores={thundercooldown=0}] if entity @e[tag=thunderspell,type=armor_stand,distance=..2,scores={damage=2}] run summon minecraft:lightning_bolt ~ ~ ~
execute if entity @s[scores={thundercooldown=0}] if entity @e[tag=thunderspell,type=armor_stand,distance=..2,scores={damage=2}] run summon minecraft:lightning_bolt ~ ~ ~
execute if entity @s[scores={thundercooldown=0}] if entity @e[tag=thunderspell,type=armor_stand,distance=..2,scores={damage=3}] run summon minecraft:lightning_bolt ~ ~ ~
execute if entity @s[scores={thundercooldown=0}] if entity @e[tag=thunderspell,type=armor_stand,distance=..2,scores={damage=3}] run summon minecraft:lightning_bolt ~ ~ ~
execute if entity @s[scores={thundercooldown=0}] if entity @e[tag=thunderspell,type=armor_stand,distance=..2,scores={damage=3}] run summon minecraft:lightning_bolt ~ ~ ~
execute if entity @s[scores={thundercooldown=0}] if entity @e[tag=thunderspell,type=armor_stand,distance=..2] run kill @e[type=armor_stand,tag=thunderspell,distance=..1]