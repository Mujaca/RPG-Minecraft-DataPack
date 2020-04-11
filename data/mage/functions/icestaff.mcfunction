execute if entity @s[tag=icestaff,scores={mana=15..,level=7..,icestaffcooldown=0,click=1..}] run tag @s add casteticestaff
execute if entity @s[tag=casteticestaff,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:7}}}] run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"dripping_water",Radius:5f,Duration:620,WaitTime:20,Tags:["icestaffspell"],Effects:[{Id:2b,Amplifier:1b,Duration:300,ShowParticles:1b}]}
execute if entity @s[tag=casteticestaff,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:8}}}] run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"dripping_water",Radius:5f,Duration:620,WaitTime:20,Tags:["icestaffspell"],Effects:[{Id:2b,Amplifier:1b,Duration:600,ShowParticles:1b}]}
execute if entity @s[tag=casteticestaff,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:9}}}] run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"dripping_water",Radius:5f,Duration:620,WaitTime:20,Tags:["icestaffspell"],Effects:[{Id:2b,Amplifier:1b,Duration:1200,ShowParticles:1b}]}
execute if entity @s[tag=casteticestaff] run tp @e[type=area_effect_cloud,tag=icestaffspell,distance=..1] @s
execute if entity @s[tag=casteticestaff] as @e[type=area_effect_cloud,tag=icestaffspell,distance=..1] at @s run tp ~ ~2 ~
execute if entity @s[tag=casteticestaff] run scoreboard players set @s icestaffcooldown 600
execute if entity @s[tag=casteticestaff] run scoreboard players remove @s mana 15
execute if entity @s[tag=casteticestaff,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:7}}}] run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=icestaffspell,distance=..1] damage 1
execute if entity @s[tag=casteticestaff,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:8}}}] run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=icestaffspell,distance=..1] damage 3
execute if entity @s[tag=casteticestaff,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,Damage:9}}}] run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=icestaffspell,distance=..1] damage 5
execute if entity @s[tag=casteticestaff] run tag @s remove casteticestaff

execute as @e[type=minecraft:area_effect_cloud,tag=icestaffspell] at @s if block ~ ~-1 ~ air run tp ^ ^ ^0.4
execute as @e[type=minecraft:area_effect_cloud,tag=icestaffspell] at @s run particle minecraft:crit ~ ~ ~ 0 0 0 0.1 2 force @a
execute if score @s icestaffcooldown > @s null run scoreboard players remove @s icestaffcooldown 1