execute if entity @s[tag=fireball,scores={mana=5..,level=5..,fireballcooldown=0,click=1..}] run tag @s add castetfireball
execute if entity @s[tag=castetfireball] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["fireballspell"]}
execute if entity @s[tag=castetfireball] run tp @e[type=armor_stand,tag=fireballspell,distance=..1] @s
execute if entity @s[tag=castetfireball] run scoreboard players set @s fireballcooldown 20
execute if entity @s[tag=castetfireball] run scoreboard players remove @s mana 5
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:4}}},tag=castetfireball] run scoreboard players set @e[tag=fireballspell,distance=..1] damage 5
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:5}}},tag=castetfireball] run scoreboard players set @e[tag=fireballspell,distance=..1] damage 10
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:6}}},tag=castetfireball] run scoreboard players set @e[tag=fireballspell,distance=..1] damage 20
execute if entity @s[tag=castetfireball] run scoreboard players operation @e[tag=fireballspell,distance=..1] damage += @s magicpower
execute if entity @s[tag=castetfireball] run tag @s remove castetfireball

execute as @e[type=armor_stand,tag=fireballspell] at @s run tp ^ ^ ^0.5
execute as @e[type=armor_stand,tag=fireballspell] at @s run particle minecraft:smoke ~ ~ ~ 0 0 0 0.2 10 force @a

execute if score @s fireballcooldown > @s null run scoreboard players remove @s fireballcooldown 1
execute as @e[type=armor_stand,tag=fireballspell] run scoreboard players add @s fireballcooldown 1
execute as @e[type=armor_stand,tag=fireballspell,scores={fireballcooldown=200..}] run kill @s