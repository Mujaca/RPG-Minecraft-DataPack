execute if entity @s[tag=fireball,scores={mana=15..,level=5..,fireballcooldown=0,click=1..}] run tag @s add castetfireball
execute if entity @s[tag=castetfireball] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["fireballspell"]}
execute if entity @s[tag=castetfireball] run tp @e[type=armor_stand,tag=fireballspell,distance=..1] @s
execute if entity @s[tag=castetfireball] run scoreboard players set @s fireballcooldown 20
execute if entity @s[tag=castetfireball] run scoreboard players remove @s mana 15
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:4}}},tag=castetfireball] run scoreboard players set @e[tag=fireballspell,distance=..1] damage 5
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:5}}},tag=castetfireball] run scoreboard players set @e[tag=fireballspell,distance=..1] damage 10
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:6}}},tag=castetfireball] run scoreboard players set @e[tag=fireballspell,distance=..1] damage 20
execute if entity @s[tag=castetfireball] run scoreboard players operation @e[tag=fireballspell,distance=..1] damage += @s magicpower
execute if entity @s[tag=castetfireball] run tag @s remove castetfireball

execute as @e[type=armor_stand,tag=fireballspell] at @s run tp ^ ^ ^0.3
execute as @e[type=armor_stand,tag=fireballspell] at @s run particle minecraft:smoke ~ ~ ~ 0 0 0 0.2 10 force @a

execute if score @s fireballcooldown > @s null run scoreboard players remove @s fireballcooldown 1
execute as @e[type=armor_stand,tag=fireballspell] run scoreboard players add @s fireballcooldown 1
execute as @e[type=armor_stand,tag=fireballspell,scores={fireballcooldown=200..}] run kill @s

execute if entity @s[scores={fireballcooldown=0}] if entity @e[tag=fireballspell,type=armor_stand,distance=..2,tag=!hit] run scoreboard players operation @e[type=armor_stand,tag=fireballspell,distance=..2] damage -= @s magicdefense
execute if entity @s[scores={fireballcooldown=0}] if entity @e[tag=fireballspell,type=armor_stand,distance=..2,tag=!hit] run tag @e[type=armor_stand,tag=fireballspell,distance=..2] add hit
execute if entity @s[scores={fireballcooldown=0}] if entity @e[tag=fireballspell,type=armor_stand,distance=..2] if score @s[tag=fireballspell,type=armor_stand,distance=..2] damage < @s null run scoreboard players set @e[tag=fireballspell,type=armor_stand,distance=..2] damage 0
execute if entity @s[scores={fireballcooldown=0}] if entity @e[tag=fireballspell,type=armor_stand,distance=..2] run scoreboard players operation @s health -= @e[type=minecraft:armor_stand,tag=fireballspell,distance=..1] damage
execute if entity @s[scores={fireballcooldown=0}] if entity @e[tag=fireballspell,type=armor_stand,distance=..2] run function healthsystem:health
execute if entity @s[scores={fireballcooldown=0}] if entity @e[tag=fireballspell,type=armor_stand,distance=..2] run kill @e[type=armor_stand,tag=fireballspell,distance=..1]