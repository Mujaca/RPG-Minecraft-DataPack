tag @e[type=item,nbt={Item:{id:"minecraft:redstone_block"}},distance=..2] add redstone
tag @e[type=item,nbt={Item:{id:"minecraft:iron_block"}},distance=..2] add iron
execute as @e[tag=redstone] at @s if entity @e[tag=iron,distance=..1] run tag @s add turretbase
execute as @e[tag=turretbase] at @s run kill @e[tag=iron,distance=..1]
execute as @e[tag=turretbase] at @s run summon minecraft:item ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,PickupDelay:0,Motion:[0.0,0.1,0.0],CustomName:'{"text":"Turret Base","color":"green"}',Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Turret Base","color":"green"}'},Unbreakable:1b,Damage:30}}}
execute as @e[tag=turretbase] at @s run kill @s

tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Damage:30,Unbreakable:1b}}},distance=..2] add turretbase1
tag @e[type=item,nbt={Item:{id:"minecraft:bow"}},distance=..2] add bow
execute as @e[tag=turretbase1] at @s if entity @e[tag=bow,distance=..1] run tag @s add turret1
execute as @e[tag=turret1] at @s run kill @e[tag=bow,distance=..1]
execute as @e[tag=turret1] at @s run summon minecraft:item ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,PickupDelay:0,Motion:[0.0,0.1,0.0],CustomName:'{"text":"Turret 1","color":"green"}',Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Turret 1","color":"green"}'},Unbreakable:1b,Damage:31}}}
execute as @e[tag=turret1] at @s run kill @s