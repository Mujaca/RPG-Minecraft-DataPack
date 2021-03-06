tag @e[type=item,nbt={Item:{id:"minecraft:stick"}},distance=..2] add magicstick
tag @e[type=item,nbt={Item:{id:"minecraft:glowstone_dust"}},distance=..2] add magicglowstone
execute as @e[tag=magicstick] at @s if entity @e[tag=magicglowstone,distance=..1] if block ~ ~ ~ enchanting_table run tag @s add base1
execute as @e[tag=base1] at @s run kill @e[tag=magicglowstone,distance=..1]
execute as @e[tag=base1] at @s run summon minecraft:item ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,PickupDelay:0,Motion:[0.0,0.1,0.0],CustomName:'{"text":"Staffbase Tier 1","color":"green"}',Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Staffbase Tier 1","color":"green"}'},Unbreakable:1b,Damage:1}}}
execute as @e[tag=base1] at @s run kill @s

tag @e[type=item,nbt={Item:{id:"minecraft:blaze_rod"}},distance=..2] add magicstick
tag @e[type=item,nbt={Item:{id:"minecraft:iron_ingot"}},distance=..2] add magicglowstone
execute as @e[tag=magicstick] at @s if entity @e[tag=magicglowstone,distance=..1] if block ~ ~ ~ enchanting_table run tag @s add base2
execute as @e[tag=base2] at @s run kill @e[tag=magicglowstone,distance=..1]
execute as @e[tag=base2] at @s run summon minecraft:item ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,PickupDelay:0,Motion:[0.0,0.1,0.0],CustomName:'{"text":"Staffbase Tier 2","color":"green"}',Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Staffbase Tier 2","color":"green"}'},Unbreakable:1b,Damage:2}}}
execute as @e[tag=base2] at @s run kill @s

tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Damage:2,Unbreakable:1b}}},distance=..2] add magicstick
tag @e[type=item,nbt={Item:{id:"minecraft:nether_star"}},distance=..2] add netherstar
execute as @e[tag=magicstick] at @s if entity @e[tag=netherstar,distance=..1] if block ~ ~ ~ enchanting_table run tag @s add base3 
execute as @e[tag=base3] at @s run kill @e[tag=netherstar,distance=..1]
execute as @e[tag=base3] at @s run summon minecraft:item ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,PickupDelay:0,Motion:[0.0,0.1,0.0],CustomName:'{"text":"Staffbase Tier 3","color":"green"}',Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Staffbase Tier 2","color":"green"}'},Unbreakable:1b,Damage:3}}}
execute as @e[tag=base3] at @s run kill @s

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
tag @e[type=item,nbt={Item:{id:"minecraft:blaze_powder"}},distance=..2] add blazepowder
execute as @e[tag=craftedbase1] at @s if entity @e[tag=blazepowder,distance=..1] if block ~ ~ ~ enchanting_table run tag @s add strength1
execute as @e[tag=strength1] at @s run kill @e[tag=blazepowder,distance=..1]
execute as @e[tag=strength1] at @s run summon minecraft:item ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,PickupDelay:0,Motion:[0.0,0.1,0.0],CustomName:'{"text":"Strength Buff Tier 1","color":"green"}',Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Strength Buff Tier 1","color":"red"}'},Unbreakable:1b,Damage:16}}}
execute as @e[tag=strength1] at @s run kill @s

tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Damage:2,Unbreakable:1b}}},distance=..2] add craftedbase2
tag @e[type=item,nbt={Item:{id:"minecraft:blaze_powder"}},distance=..2] add blazepowder
execute as @e[tag=craftedbase2] at @s if entity @e[tag=blazepowder,distance=..1] if block ~ ~ ~ enchanting_table run tag @s add strength2
execute as @e[tag=strength2] at @s run kill @e[tag=blazepowder,distance=..1]
execute as @e[tag=strength2] at @s run summon minecraft:item ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,PickupDelay:0,Motion:[0.0,0.1,0.0],CustomName:'{"text":"Strength Buff Tier 2","color":"green"}',Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Strength Buff Tier 2","color":"red"}'},Unbreakable:1b,Damage:17}}}
execute as @e[tag=strength2] at @s run kill @s

tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Damage:3,Unbreakable:1b}}},distance=..2] add craftedbase3
tag @e[type=item,nbt={Item:{id:"minecraft:blaze_powder"}},distance=..2] add blazepowder
execute as @e[tag=craftedbase3] at @s if entity @e[tag=blazepowder,distance=..1] if block ~ ~ ~ enchanting_table run tag @s add strength3
execute as @e[tag=strength3] at @s run kill @e[tag=blazepowder,distance=..1]
execute as @e[tag=strength3] at @s run summon minecraft:item ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,PickupDelay:0,Motion:[0.0,0.1,0.0],CustomName:'{"text":"Strength Buff Tier 3","color":"green"}',Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Strength Buff Tier 3","color":"red"}'},Unbreakable:1b,Damage:18}}}
execute as @e[tag=strength3] at @s run kill @s

tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Damage:1,Unbreakable:1b}}},distance=..2] add craftedbase1
tag @e[type=item,nbt={Item:{id:"minecraft:shield"}},distance=..2] add shield
execute as @e[tag=craftedbase1] at @s if entity @e[tag=shield,distance=..1] if block ~ ~ ~ enchanting_table run tag @s add defense1
execute as @e[tag=defense1] at @s run kill @e[tag=shield,distance=..1]
execute as @e[tag=defense1] at @s run summon minecraft:item ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,PickupDelay:0,Motion:[0.0,0.1,0.0],CustomName:'{"text":"Defense Buff Tier 1","color":"green"}',Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Defense Buff Tier 1","color":"red"}'},Unbreakable:1b,Damage:19}}}
execute as @e[tag=defense1] at @s run kill @s

tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Damage:2,Unbreakable:1b}}},distance=..2] add craftedbase2
tag @e[type=item,nbt={Item:{id:"minecraft:shield"}},distance=..2] add shield
execute as @e[tag=craftedbase2] at @s if entity @e[tag=shield,distance=..1] if block ~ ~ ~ enchanting_table run tag @s add defense2
execute as @e[tag=defense2] at @s run kill @e[tag=shield,distance=..1]
execute as @e[tag=defense2] at @s run summon minecraft:item ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,PickupDelay:0,Motion:[0.0,0.1,0.0],CustomName:'{"text":"Defense Buff Tier 2","color":"green"}',Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Defense Buff Tier 2","color":"red"}'},Unbreakable:1b,Damage:20}}}
execute as @e[tag=defense2] at @s run kill @s

tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Damage:3,Unbreakable:1b}}},distance=..2] add craftedbase3
tag @e[type=item,nbt={Item:{id:"minecraft:shield"}},distance=..2] add shield
execute as @e[tag=craftedbase3] at @s if entity @e[tag=shield,distance=..1] if block ~ ~ ~ enchanting_table run tag @s add defense3
execute as @e[tag=defense3] at @s run kill @e[tag=shield,distance=..1]
execute as @e[tag=defense3] at @s run summon minecraft:item ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,PickupDelay:0,Motion:[0.0,0.1,0.0],CustomName:'{"text":"Defense Buff Tier 3","color":"green"}',Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Defense Buff Tier 3","color":"red"}'},Unbreakable:1b,Damage:21}}}
execute as @e[tag=defense3] at @s run kill @s

tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Damage:1,Unbreakable:1b}}},distance=..2] add craftedbase1
tag @e[type=item,nbt={Item:{id:"minecraft:prismarine_crystals"}},distance=..2] add prismarinecrystals
execute as @e[tag=craftedbase1] at @s if entity @e[tag=prismarinecrystals,distance=..1] if block ~ ~ ~ enchanting_table run tag @s add magicpower1
execute as @e[tag=magicpower1] at @s run kill @e[tag=prismarinecrystals,distance=..1]
execute as @e[tag=magicpower1] at @s run summon minecraft:item ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,PickupDelay:0,Motion:[0.0,0.1,0.0],CustomName:'{"text":"Magic Power Buff Tier 1","color":"green"}',Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Magic Power Buff Tier 1","color":"red"}'},Unbreakable:1b,Damage:22}}}
execute as @e[tag=magicpower1] at @s run kill @s

tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Damage:2,Unbreakable:1b}}},distance=..2] add craftedbase2
tag @e[type=item,nbt={Item:{id:"minecraft:prismarine_crystals"}},distance=..2] add prismarinecrystals
execute as @e[tag=craftedbase2] at @s if entity @e[tag=prismarinecrystals,distance=..1] if block ~ ~ ~ enchanting_table run tag @s add magicpower2
execute as @e[tag=magicpower2] at @s run kill @e[tag=prismarinecrystals,distance=..1]
execute as @e[tag=magicpower2] at @s run summon minecraft:item ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,PickupDelay:0,Motion:[0.0,0.1,0.0],CustomName:'{"text":"Magic Power Buff Tier 2","color":"green"}',Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Magic Power Buff Tier 2","color":"red"}'},Unbreakable:1b,Damage:23}}}
execute as @e[tag=magicpower2] at @s run kill @s

tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Damage:3,Unbreakable:1b}}},distance=..2] add craftedbase3
tag @e[type=item,nbt={Item:{id:"minecraft:prismarine_crystals"}},distance=..2] add prismarinecrystals
execute as @e[tag=craftedbase3] at @s if entity @e[tag=prismarinecrystals,distance=..1] if block ~ ~ ~ enchanting_table run tag @s add magicpower3
execute as @e[tag=magicpower3] at @s run kill @e[tag=prismarinecrystals,distance=..1]
execute as @e[tag=magicpower3] at @s run summon minecraft:item ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,PickupDelay:0,Motion:[0.0,0.1,0.0],CustomName:'{"text":"Magic Power Buff Tier 3","color":"green"}',Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Magic Power Buff Tier 3","color":"red"}'},Unbreakable:1b,Damage:24}}}
execute as @e[tag=magicpower3] at @s run kill @s

tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Damage:1,Unbreakable:1b}}},distance=..2] add craftedbase1
tag @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli"}},distance=..2] add lapislazuli
execute as @e[tag=craftedbase1] at @s if entity @e[tag=lapislazuli,distance=..1] if block ~ ~ ~ enchanting_table run tag @s add magicdefense1
execute as @e[tag=magicdefense1] at @s run kill @e[tag=lapislazuli,distance=..1]
execute as @e[tag=magicdefense1] at @s run summon minecraft:item ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,PickupDelay:0,Motion:[0.0,0.1,0.0],CustomName:'{"text":"Magic Defense Buff Tier 1","color":"green"}',Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Magic Defense Buff Tier 1","color":"red"}'},Unbreakable:1b,Damage:25}}}
execute as @e[tag=magicdefense1] at @s run kill @s

tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Damage:2,Unbreakable:1b}}},distance=..2] add craftedbase2
tag @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli"}},distance=..2] add lapislazuli
execute as @e[tag=craftedbase2] at @s if entity @e[tag=lapislazuli,distance=..1] if block ~ ~ ~ enchanting_table run tag @s add magicdefense2
execute as @e[tag=magicdefense2] at @s run kill @e[tag=lapislazuli,distance=..1]
execute as @e[tag=magicdefense2] at @s run summon minecraft:item ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,PickupDelay:0,Motion:[0.0,0.1,0.0],CustomName:'{"text":"Magic Defense Buff Tier 2","color":"green"}',Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Magic Defense Buff Tier 2","color":"red"}'},Unbreakable:1b,Damage:26}}}
execute as @e[tag=magicdefense2] at @s run kill @s

tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Damage:3,Unbreakable:1b}}},distance=..2] add craftedbase3
tag @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli"}},distance=..2] add lapislazuli
execute as @e[tag=craftedbase3] at @s if entity @e[tag=lapislazuli,distance=..1] if block ~ ~ ~ enchanting_table run tag @s add magicdefense3
execute as @e[tag=magicdefense3] at @s run kill @e[tag=lapislazuli,distance=..1]
execute as @e[tag=magicdefense3] at @s run summon minecraft:item ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,PickupDelay:0,Motion:[0.0,0.1,0.0],CustomName:'{"text":"Magic Defense Buff Tier 3","color":"green"}',Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Magic Defense Buff Tier 3","color":"red"}'},Unbreakable:1b,Damage:27}}}
execute as @e[tag=magicdefense3] at @s run kill @s