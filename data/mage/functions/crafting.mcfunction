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
execute as @e[tag=craftedbase1] at @s if entity @e[tag=flintandsteel,distance=..1] if block ~ ~ ~ enchanting_table run tag @s add firestaff1
execute as @e[tag=firestaff1] at @s run kill @e[tag=flintandsteel,distance=..1]
execute as @e[tag=firestaff1] at @s run summon minecraft:item ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,PickupDelay:0,Motion:[0.0,0.1,0.0],CustomName:'{"text":"Feuerball Tier 1","color":"green"}',Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Feuerball Tier 1","color":"red"}'},Unbreakable:1b,Damage:4}}}
execute as @e[tag=firestaff1] at @s run kill @s

tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Damage:2,Unbreakable:1b}}},distance=..2] add craftedbase2
tag @e[type=item,nbt={Item:{id:"minecraft:flint_and_steel"}},distance=..2] add flintandsteel
execute as @e[tag=craftedbase2] at @s if entity @e[tag=flintandsteel,distance=..1] if block ~ ~ ~ enchanting_table run tag @s add firestaff2
execute as @e[tag=firestaff2] at @s run kill @e[tag=flintandsteel,distance=..1]
execute as @e[tag=firestaff2] at @s run summon minecraft:item ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,PickupDelay:0,Motion:[0.0,0.1,0.0],CustomName:'{"text":"Feuerball Tier 2","color":"green"}',Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Feuerball Tier 2","color":"red"}'},Unbreakable:1b,Damage:5}}}
execute as @e[tag=firestaff2] at @s run kill @s

tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Damage:3,Unbreakable:1b}}},distance=..2] add craftedbase3
tag @e[type=item,nbt={Item:{id:"minecraft:flint_and_steel"}},distance=..2] add flintandsteel
execute as @e[tag=craftedbase3] at @s if entity @e[tag=flintandsteel,distance=..1] if block ~ ~ ~ enchanting_table run tag @s add firestaff3
execute as @e[tag=firestaff3] at @s run kill @e[tag=flintandsteel,distance=..1]
execute as @e[tag=firestaff3] at @s run summon minecraft:item ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,PickupDelay:0,Motion:[0.0,0.1,0.0],CustomName:'{"text":"Feuerball Tier 3","color":"green"}',Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Feuerball Tier 3","color":"red"}'},Unbreakable:1b,Damage:6}}}
execute as @e[tag=firestaff3] at @s run kill @s

tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Damage:1,Unbreakable:1b}}},distance=..2] add craftedbase1
tag @e[type=item,nbt={Item:{id:"minecraft:snowball"}},distance=..2] add snowball
execute as @e[tag=craftedbase1] at @s if entity @e[tag=snowball,distance=..1] if block ~ ~ ~ enchanting_table run tag @s add icestaff1
execute as @e[tag=icestaff1] at @s run kill @e[tag=snowball,distance=..1]
execute as @e[tag=icestaff1] at @s run summon minecraft:item ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,PickupDelay:0,Motion:[0.0,0.1,0.0],CustomName:'{"text":"Eissturm Tier 1","color":"green"}',Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Eissturm Tier 1","color":"blue"}'},Unbreakable:1b,Damage:7}}}
execute as @e[tag=icestaff1] at @s run kill @s

tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Damage:2,Unbreakable:1b}}},distance=..2] add craftedbase2
tag @e[type=item,nbt={Item:{id:"minecraft:snowball"}},distance=..2] add snowball
execute as @e[tag=craftedbase2] at @s if entity @e[tag=snowball,distance=..1] if block ~ ~ ~ enchanting_table run tag @s add icestaff2
execute as @e[tag=icestaff2] at @s run kill @e[tag=snowball,distance=..1]
execute as @e[tag=icestaff2] at @s run summon minecraft:item ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,PickupDelay:0,Motion:[0.0,0.1,0.0],CustomName:'{"text":"Eissturm Tier 2","color":"green"}',Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Eissturm Tier 2","color":"blue"}'},Unbreakable:1b,Damage:8}}}
execute as @e[tag=icestaff2] at @s run kill @s

tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Damage:3,Unbreakable:1b}}},distance=..2] add craftedbase3
tag @e[type=item,nbt={Item:{id:"minecraft:snowball"}},distance=..2] add snowball
execute as @e[tag=craftedbase3] at @s if entity @e[tag=snowball,distance=..1] if block ~ ~ ~ enchanting_table run tag @s add icestaff3
execute as @e[tag=icestaff3] at @s run kill @e[tag=snowball,distance=..1]
execute as @e[tag=icestaff3] at @s run summon minecraft:item ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,PickupDelay:0,Motion:[0.0,0.1,0.0],CustomName:'{"text":"Eissturm Tier 3","color":"green"}',Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Eissturm Tier 3","color":"blue"}'},Unbreakable:1b,Damage:9}}}
execute as @e[tag=icestaff3] at @s run kill @s

tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Damage:1,Unbreakable:1b}}},distance=..2] add craftedbase1
tag @e[type=item,nbt={Item:{id:"minecraft:ghast_tear"}},distance=..2] add ghasttear
execute as @e[tag=craftedbase1] at @s if entity @e[tag=ghasttear,distance=..1] if block ~ ~ ~ enchanting_table run tag @s add thunderstaff1
execute as @e[tag=thunderstaff1] at @s run kill @e[tag=ghasttear,distance=..1]
execute as @e[tag=thunderstaff1] at @s run summon minecraft:item ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,PickupDelay:0,Motion:[0.0,0.1,0.0],CustomName:'{"text":"Throwable Thunder Tier 1","color":"green"}',Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Throwable Thunder Tier 1","color":"white"}'},Unbreakable:1b,Damage:10}}}
execute as @e[tag=thunderstaff1] at @s run kill @s

tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Damage:2,Unbreakable:1b}}},distance=..2] add craftedbase2
tag @e[type=item,nbt={Item:{id:"minecraft:ghast_tear"}},distance=..2] add ghasttear
execute as @e[tag=craftedbase2] at @s if entity @e[tag=ghasttear,distance=..1] if block ~ ~ ~ enchanting_table run tag @s add thunderstaff2
execute as @e[tag=thunderstaff2] at @s run kill @e[tag=ghasttear,distance=..1]
execute as @e[tag=thunderstaff2] at @s run summon minecraft:item ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,PickupDelay:0,Motion:[0.0,0.1,0.0],CustomName:'{"text":"Throwable Thunder Tier 2","color":"green"}',Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Throwable Thunder Tier 2","color":"white"}'},Unbreakable:1b,Damage:11}}}
execute as @e[tag=thunderstaff2] at @s run kill @s

tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Damage:3,Unbreakable:1b}}},distance=..2] add craftedbase3
tag @e[type=item,nbt={Item:{id:"minecraft:ghast_tear"}},distance=..2] add ghasttear
execute as @e[tag=craftedbase3] at @s if entity @e[tag=ghasttear,distance=..1] if block ~ ~ ~ enchanting_table run tag @s add thunderstaff3
execute as @e[tag=thunderstaff3] at @s run kill @e[tag=ghasttear,distance=..1]
execute as @e[tag=thunderstaff3] at @s run summon minecraft:item ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,PickupDelay:0,Motion:[0.0,0.1,0.0],CustomName:'{"text":"Throwable Thunder Tier 3","color":"green"}',Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Throwable Thunder Tier 3","color":"white"}'},Unbreakable:1b,Damage:12}}}
execute as @e[tag=thunderstaff3] at @s run kill @s
