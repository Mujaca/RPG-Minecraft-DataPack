tag @s remove hatching
execute as @s[nbt={SelectedItem:{id:"minecraft:fox_spawn_egg"}}] run tag @s add hatching
execute as @s[nbt={SelectedItem:{id:"minecraft:fox_spawn_egg"}},tag=!haspet,tag=!hasegg] run scoreboard players set @s hatchtime 12000
execute as @s[nbt={SelectedItem:{id:"minecraft:fox_spawn_egg"}},tag=!haspet] run tag @s add hasegg
execute as @s[nbt={SelectedItem:{id:"minecraft:turtle_spawn_egg"}}] run tag @s add hatching
execute as @s[nbt={SelectedItem:{id:"minecraft:turtle_spawn_egg"}},tag=!haspet,tag=!hasegg] run scoreboard players set @s hatchtime 12000
execute as @s[nbt={SelectedItem:{id:"minecraft:turtle_spawn_egg"}},tag=!haspet] run tag @s add hasegg
execute as @s[nbt={SelectedItem:{id:"minecraft:panda_spawn_egg"}}] run tag @s add hatching
execute as @s[nbt={SelectedItem:{id:"minecraft:panda_spawn_egg"}},tag=!haspet,tag=!hasegg] run scoreboard players set @s hatchtime 12000
execute as @s[nbt={SelectedItem:{id:"minecraft:panda_spawn_egg"}},tag=!haspet] run tag @s add hasegg
execute as @s[nbt={SelectedItem:{id:"minecraft:cow_spawn_egg"}}] run tag @s add hatching
execute as @s[nbt={SelectedItem:{id:"minecraft:cow_spawn_egg"}},tag=!haspet,tag=!hasegg] run scoreboard players set @s hatchtime 12000
execute as @s[nbt={SelectedItem:{id:"minecraft:cow_spawn_egg"}},tag=!haspet] run tag @s add hasegg
gamemode adventure @s[tag=hatching,tag=hasegg,gamemode=survival]
gamemode survival @s[tag=!hatching,tag=hasegg,gamemode=adventure]
execute if entity @s[tag=hatching,tag=hasegg,tag=!haspet] run scoreboard players remove @s hatchtime 1

execute if score @s hatchtime = @s null run tag @s remove hasegg
execute if score @s hatchtime = @s null run tag @s add haspet
execute if score @s hatchtime = @s null run scoreboard players add current petid 1

execute if score @s hatchtime = @s null if entity @s[nbt={SelectedItem:{id:"minecraft:fox_spawn_egg"}}] run summon minecraft:fox ~ ~ ~ {NoGravity:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["pet"],Sleeping:1b,CustomName:'{"text":"Fox Pet"}',CustomNameVisible:1b,Age:-1000000000}
execute if score @s hatchtime = @s null if entity @s[nbt={SelectedItem:{id:"minecraft:fox_spawn_egg"}}] store result score @e[type=minecraft:fox,tag=pet,distance=..1,tag=!gotid] petid run scoreboard players get current petid
execute if score @s hatchtime = @s null if entity @s[nbt={SelectedItem:{id:"minecraft:fox_spawn_egg"}}] store result score @s petid run scoreboard players get current petid
execute if score @s hatchtime = @s null if entity @s[nbt={SelectedItem:{id:"minecraft:fox_spawn_egg"}}] run tag @e[type=fox,tag=pet,distance=..1,tag=!gotid] add gotid
execute if score @s hatchtime = @s null if entity @s[nbt={SelectedItem:{id:"minecraft:fox_spawn_egg"}}] run scoreboard players set @s sneaktime 0
execute if score @s hatchtime = @s null if entity @s[nbt={SelectedItem:{id:"minecraft:fox_spawn_egg"}}] run clear @s minecraft:fox_spawn_egg 1

execute if score @s hatchtime = @s null if entity @s[nbt={SelectedItem:{id:"minecraft:turtle_spawn_egg"}}] run summon minecraft:turtle ~ ~ ~ {NoGravity:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["pet"],Sleeping:1b,CustomName:'{"text":"Schildkröten Pet"}',CustomNameVisible:1b,Age:-1000000000}
execute if score @s hatchtime = @s null if entity @s[nbt={SelectedItem:{id:"minecraft:turtle_spawn_egg"}}] store result score @e[type=minecraft:turtle,tag=pet,distance=..1,tag=!gotid] petid run scoreboard players get current petid
execute if score @s hatchtime = @s null if entity @s[nbt={SelectedItem:{id:"minecraft:turtle_spawn_egg"}}] store result score @s petid run scoreboard players get current petid
execute if score @s hatchtime = @s null if entity @s[nbt={SelectedItem:{id:"minecraft:turtle_spawn_egg"}}] run tag @e[type=turtle,tag=pet,distance=..1,tag=!gotid] add gotid
execute if score @s hatchtime = @s null if entity @s[nbt={SelectedItem:{id:"minecraft:turtle_spawn_egg"}}] run scoreboard players set @s sneaktime 0
execute if score @s hatchtime = @s null if entity @s[nbt={SelectedItem:{id:"minecraft:turtle_spawn_egg"}}] run clear @s minecraft:turtle_spawn_egg 1

execute if score @s hatchtime = @s null if entity @s[nbt={SelectedItem:{id:"minecraft:panda_spawn_egg"}}] run summon minecraft:panda ~ ~ ~ {NoGravity:1b,CanPickUpLoot:0b,Tags:["pet"],Sleeping:1b,CustomName:'{"text":"Panda Pet"}',CustomNameVisible:1b,Age:-1000000000}
execute if score @s hatchtime = @s null if entity @s[nbt={SelectedItem:{id:"minecraft:panda_spawn_egg"}}] store result score @e[type=minecraft:panda,tag=pet,distance=..1,tag=!gotid] petid run scoreboard players get current petid
execute if score @s hatchtime = @s null if entity @s[nbt={SelectedItem:{id:"minecraft:panda_spawn_egg"}}] store result score @s petid run scoreboard players get current petid
execute if score @s hatchtime = @s null if entity @s[nbt={SelectedItem:{id:"minecraft:panda_spawn_egg"}}] run tag @e[type=panda,tag=pet,distance=..1,tag=!gotid] add gotid
execute if score @s hatchtime = @s null if entity @s[nbt={SelectedItem:{id:"minecraft:panda_spawn_egg"}}] run scoreboard players set @s sneaktime 0
execute if score @s hatchtime = @s null if entity @s[nbt={SelectedItem:{id:"minecraft:panda_spawn_egg"}}] run clear @s minecraft:panda_spawn_egg 1

execute if score @s hatchtime = @s null if entity @s[nbt={SelectedItem:{id:"minecraft:cow_spawn_egg"}}] run summon minecraft:mooshroom ~ ~ ~ {NoGravity:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["pet"],Sleeping:1b,CustomName:'{"text":"Pilzkuh Pet"}',CustomNameVisible:1b,Age:-1000000000}
execute if score @s hatchtime = @s null if entity @s[nbt={SelectedItem:{id:"minecraft:cow_spawn_egg"}}] store result score @e[type=minecraft:mooshroom,tag=pet,distance=..1,tag=!gotid] petid run scoreboard players get current petid
execute if score @s hatchtime = @s null if entity @s[nbt={SelectedItem:{id:"minecraft:cow_spawn_egg"}}] store result score @s petid run scoreboard players get current petid
execute if score @s hatchtime = @s null if entity @s[nbt={SelectedItem:{id:"minecraft:cow_spawn_egg"}}] run tag @e[type=mooshroom,tag=pet,distance=..1,tag=!gotid] add gotid
execute if score @s hatchtime = @s null if entity @s[nbt={SelectedItem:{id:"minecraft:cow_spawn_egg"}}] run scoreboard players set @s sneaktime 0
execute if score @s hatchtime = @s null if entity @s[nbt={SelectedItem:{id:"minecraft:cow_spawn_egg"}}] run clear @s minecraft:cow_spawn_egg 1

execute if score @s hatchtime = @s null run scoreboard players reset @s hatchtime