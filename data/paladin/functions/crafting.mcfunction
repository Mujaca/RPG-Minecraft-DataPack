tag @e[type=item,nbt={Item:{id:"minecraft:stick"}},distance=..2] add craftedbase1
tag @e[type=item,nbt={Item:{id:"minecraft:honey_bottle"}},distance=..2] add honeybottle
execute as @e[tag=craftedbase1] at @s if entity @e[tag=honeybottle,distance=..1] if block ~ ~ ~ enchanting_table run tag @s add selfheal1
execute as @e[tag=selfheal1] at @s run kill @e[tag=honeybottle,distance=..1]
execute as @e[tag=selfheal1] at @s run summon minecraft:item ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,PickupDelay:0,Motion:[0.0,0.1,0.0],CustomName:'{"text":"Selbst Heilung","color":"green"}',Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Selbst Heilung","color":"green"}'},Unbreakable:1b,Damage:28}}}
execute as @e[tag=selfheal1] at @s run kill @s

tag @e[type=item,nbt={Item:{id:"minecraft:stick"}},distance=..2] add craftedbase1
tag @e[type=item,nbt={Item:{id:"minecraft:honey_block"}},distance=..2] add honeyblock
execute as @e[tag=craftedbase1] at @s if entity @e[tag=honeyblock,distance=..1] if block ~ ~ ~ enchanting_table run tag @s add heal1
execute as @e[tag=heal1] at @s run kill @e[tag=honeyblock,distance=..1]
execute as @e[tag=heal1] at @s run summon minecraft:item ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,PickupDelay:0,Motion:[0.0,0.1,0.0],CustomName:'{"text":"Heilungszauber","color":"green"}',Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Heilungszauber","color":"green"}'},Unbreakable:1b,Damage:29}}}
execute as @e[tag=heal1] at @s run kill @s
