tag @s remove selfheal
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:28}}}] run tag @s add selfheal
tag @s remove heal
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:29}}}] run tag @s add heal

execute if entity @s[tag=selfheal,scores={click=1..,mana=10..}] run scoreboard players operation @s health += @s magicpower
execute if entity @s[tag=selfheal,scores={click=1..,mana=10..}] run scoreboard players remove @s mana 10

scoreboard players set @s click 0