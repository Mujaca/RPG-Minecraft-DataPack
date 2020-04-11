execute if entity @s[tag=strengthbuff,scores={mana=25..,level=5..,buffcooldown=0,click=1..},tag=disabled] run tag @s add buffingstrength
execute if entity @s[tag=buffingstrength] as @a[distance=..10,tag=!strengthbuffed] store result score @s ostrength run scoreboard players get @s strength
execute if entity @s[tag=buffingstrength,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:16}}}] as @a[distance=..10,tag=!strengthbuffed] run scoreboard players set @s multiplikator 4
execute if entity @s[tag=buffingstrength,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:17}}}] as @a[distance=..10,tag=!strengthbuffed] run scoreboard players set @s multiplikator 3
execute if entity @s[tag=buffingstrength,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:18}}}] as @a[distance=..10,tag=!strengthbuffed] run scoreboard players set @s multiplikator 2
execute if entity @s[tag=buffingstrength] store result score @a updatestats run scoreboard players get @s magicpower
execute if entity @s[tag=buffingstrength] as @a[distance=..10,tag=!strengthbuffed] run scoreboard players operation @s updatestats /= @s multiplikator
execute if entity @s[tag=buffingstrength] as @a[distance=..10,tag=!strengthbuffed] run scoreboard players operation @s strength += @s updatestats
execute if entity @s[tag=buffingstrength] as @a[distance=..10,tag=!strengthbuffed] run scoreboard players set @s buffduration 6000
execute if entity @s[tag=buffingstrength] as @a[distance=..10,tag=!strengthbuffed] run tag @s add strengthbuffed
execute if entity @s[tag=buffingstrength] run scoreboard players set @a buffcooldown 200
execute if entity @s[tag=buffingstrength] run scoreboard players remove @s mana 25
execute if entity @s[tag=buffingstrength] run tag @s remove buffingstrength

execute if entity @s[tag=defensebuff,scores={mana=25..,level=5..,buffcooldown=0,click=1..}] run tag @s add buffingdefense
execute if entity @s[tag=buffingdefense] as @a[distance=..10,tag=!defensebuffed] store result score @s odefense run scoreboard players get @s defense
execute if entity @s[tag=buffingdefense,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:19}}}] as @a[distance=..10,tag=!defensebuffed] run scoreboard players set @s multiplikator 4
execute if entity @s[tag=buffingdefense,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:20}}}] as @a[distance=..10,tag=!defensebuffed] run scoreboard players set @s multiplikator 3
execute if entity @s[tag=buffingdefense,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:21}}}] as @a[distance=..10,tag=!defensebuffed] run scoreboard players set @s multiplikator 2
execute if entity @s[tag=buffingdefense] store result score @a updatestats run scoreboard players get @s magicpower
execute if entity @s[tag=buffingdefense] as @a[distance=..10,tag=!defensebuffed] run scoreboard players operation @s updatestats /= @s multiplikator
execute if entity @s[tag=buffingdefense] as @a[distance=..10,tag=!defensebuffed] run scoreboard players operation @s defense += @s updatestats
execute if entity @s[tag=buffingdefense] as @a[distance=..10,tag=!defensebuffed] run scoreboard players set @s buffduration 6000
execute if entity @s[tag=buffingdefense] as @a[distance=..10,tag=!defensebuffed] run tag @s add defensebuffed
execute if entity @s[tag=buffingdefense] run scoreboard players set @a buffcooldown 200
execute if entity @s[tag=buffingdefense] run scoreboard players remove @s mana 25
execute if entity @s[tag=buffingdefense] run tag @s remove buffingdefense

execute if entity @s[tag=magicpowerbuff,scores={mana=25..,level=5..,buffcooldown=0,click=1..}] run tag @s add buffingmagicpower
execute if entity @s[tag=buffingmagicpower] as @a[distance=..10,tag=!strengthbuffed] store result score @s omagicpower run scoreboard players get @s magicpower
execute if entity @s[tag=buffingmagicpower,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:22}}}] as @a[distance=..10,tag=!magicpowerbuffed] run scoreboard players set @s multiplikator 4
execute if entity @s[tag=buffingmagicpower,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:23}}}] as @a[distance=..10,tag=!magicpowerbuffed] run scoreboard players set @s multiplikator 3
execute if entity @s[tag=buffingmagicpower,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:24}}}] as @a[distance=..10,tag=!magicpowerbuffed] run scoreboard players set @s multiplikator 2
execute if entity @s[tag=buffingmagicpower] store result score @a updatestats run scoreboard players get @s magicpower
execute if entity @s[tag=buffingmagicpower] as @a[distance=..10,tag=!magicpowerbuffed] run scoreboard players operation @s updatestats /= @s multiplikator
execute if entity @s[tag=buffingmagicpower] as @a[distance=..10,tag=!magicpowerbuffed] run scoreboard players operation @s magicpower += @s updatestats
execute if entity @s[tag=buffingmagicpower] as @a[distance=..10,tag=!magicpowerbuffed] run scoreboard players set @s buffduration 6000
execute if entity @s[tag=buffingmagicpower] as @a[distance=..10,tag=!magicpowerbuffed] run tag @s add magicpowerbuffed
execute if entity @s[tag=buffingmagicpower] run scoreboard players set @a buffcooldown 200
execute if entity @s[tag=buffingmagicpower] run scoreboard players remove @s mana 25
execute if entity @s[tag=buffingmagicpower] run tag @s remove buffingmagicpower

execute if entity @s[tag=magicdefensebuff,scores={mana=25..,level=5..,buffcooldown=0,click=1..}] run tag @s add buffingmagicdefense
execute if entity @s[tag=buffingmagicdefense] as @a[distance=..10,tag=!magicdefensebuffed] store result score @s omagicdefense run scoreboard players get @s magicdefense
execute if entity @s[tag=buffingmagicdefense,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:25}}}] as @a[distance=..10,tag=!magicdefensebuffed] run scoreboard players set @s multiplikator 4
execute if entity @s[tag=buffingmagicdefense,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:26}}}] as @a[distance=..10,tag=!magicdefensebuffed] run scoreboard players set @s multiplikator 3
execute if entity @s[tag=buffingmagicdefense,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:27}}}] as @a[distance=..10,tag=!magicdefensebuffed] run scoreboard players set @s multiplikator 2
execute if entity @s[tag=buffingmagicdefense] store result score @a updatestats run scoreboard players get @s magicpower
execute if entity @s[tag=buffingmagicdefense] as @a[distance=..10,tag=!magicdefensebuffed] run scoreboard players operation @s updatestats /= @s multiplikator
execute if entity @s[tag=buffingmagicdefense] as @a[distance=..10,tag=!magicdefensebuffed] run scoreboard players operation @s magicdefense += @s updatestats
execute if entity @s[tag=buffingmagicdefense] as @a[distance=..10,tag=!magicdefensebuffed] run scoreboard players set @s buffduration 6000
execute if entity @s[tag=buffingmagicdefense] as @a[distance=..10,tag=!magicdefensebuffed] run tag @s add magicdefensebuffed
execute if entity @s[tag=buffingmagicdefense] run scoreboard players set @a buffcooldown 200
execute if entity @s[tag=buffingmagicdefense] run scoreboard players remove @s mana 25
execute if entity @s[tag=buffingmagicdefense] run tag @s remove buffingmagicdefense

execute if score @s buffcooldown > @s null run scoreboard players remove @s buffcooldown 1