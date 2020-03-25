tag @e[type=item,nbt={Item:{id:"minecraft:stick"}},distance=..2] add magicstick
tag @e[type=item,nbt={Item:{id:"minecraft:glowstone_dust"}},distance=..2] add magicglowstone
execute as @e[tag=magicstick] at @s if entity @e[tag=magicglowstone,distance=..1] if block ~ ~ ~ enchanting_table run tag @s add base1
execute as @e[tag=base1] at @s run kill @e[tag=magicglowstone,distance=..1]
execute as @e[tag=base1] at @s run summon minecraft:item ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,PickupDelay:0,Motion:[0.0,0.1,0.0],CustomName:'{"text":"Staffbase Tier 1","color":"green"}',Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Staffbase Tier 1","color":"green"}'},Unbreakable:1b,Damage:1}}}
execute as @e[tag=base1] at @s run kill @s

tag @e[type=item,nbt={Item:{id:"minecraft:blaze_rod"}},distance=..2] add magicstick
tag @e[type=item,nbt={Item:{id:"minecraft:iron_ingot"}},distance=..2] add magicglowstone
execute as @e[tag=magicstick] at @s if entity @e[tag=magicglowstone,distance=..1] if block ~ ~ ~ cauldron run tag @s add base2
execute as @e[tag=base2] at @s run kill @e[tag=magicglowstone,distance=..1]
execute as @e[tag=base2] at @s run summon minecraft:item ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,PickupDelay:0,Motion:[0.0,0.1,0.0],CustomName:'{"text":"Staffbase Tier 2","color":"green"}',Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Staffbase Tier 2","color":"green"}'},Unbreakable:1b,Damage:2}}}
execute as @e[tag=base2] at @s run kill @s

tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Damage:1,Unbreakable:1b}}},distance=..2] add craftedbase1
tag @e[type=item,nbt={Item:{id:"minecraft:flint_and_steel"}},distance=..2] add flintandsteel
execute as @e[tag=craftedbase1] at @s if entity @e[tag=flintandsteel,distance=..1] if block ~ ~ ~ enchanting_table run tag @s add firestaff
execute as @e[tag=firestaff] at @s run kill @e[tag=flintandsteel,distance=..1]
execute as @e[tag=firestaff] at @s run summon minecraft:item ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,PickupDelay:0,Motion:[0.0,0.1,0.0],CustomName:'{"text":"Feuerball Tier 1","color":"green"}',Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Feuerball Tier 1","color":"red"}'},Unbreakable:1b,Damage:4}}}
execute as @e[tag=firestaff] at @s run kill @s

tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Damage:2,Unbreakable:1b}}},distance=..2] add craftedbase2
tag @e[type=item,nbt={Item:{id:"minecraft:flint_and_steel"}},distance=..2] add flintandsteel
execute as @e[tag=craftedbase2] at @s if entity @e[tag=flintandsteel,distance=..1] if block ~ ~ ~ enchanting_table run tag @s add firestaff
execute as @e[tag=firestaff] at @s run kill @e[tag=flintandsteel,distance=..1]
execute as @e[tag=firestaff] at @s run summon minecraft:item ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,PickupDelay:0,Motion:[0.0,0.1,0.0],CustomName:'{"text":"Feuerball Tier 2","color":"green"}',Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Feuerball Tier 2","color":"red"}'},Unbreakable:1b,Damage:5}}}
execute as @e[tag=firestaff] at @s run kill @s

tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Damage:3,Unbreakable:1b}}},distance=..2] add craftedbase3
tag @e[type=item,nbt={Item:{id:"minecraft:flint_and_steel"}},distance=..2] add flintandsteel
execute as @e[tag=craftedbase3] at @s if entity @e[tag=flintandsteel,distance=..1] if block ~ ~ ~ enchanting_table run tag @s add firestaff
execute as @e[tag=firestaff] at @s run kill @e[tag=flintandsteel,distance=..1]
execute as @e[tag=firestaff] at @s run summon minecraft:item ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,PickupDelay:0,Motion:[0.0,0.1,0.0],CustomName:'{"text":"Feuerball Tier 3","color":"green"}',Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Feuerball Tier 3","color":"red"}'},Unbreakable:1b,Damage:6}}}
execute as @e[tag=firestaff] at @s run kill @s
