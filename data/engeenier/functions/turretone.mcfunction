execute as @a[nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Damage:31,Unbreakable:1b}}},scores={click=1..}] run tag @s add summonturret1
execute as @a[tag=summonturret1] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,CustomName:'{"text":"Turret Tier 1"}',Tags:["turretone"]}
execute as @a[tag=summonturret1] as @e[type=armor_stand,tag=turretone,distance=..1] run tp ~ ~ ~
execute as @a[tag=summonturret1] as @e[type=armor_stand,tag=turretone,distance=..1] run scoreboard players set @s maxammo 50
execute as @a[tag=summonturret1] as @e[type=armor_stand,tag=turretone,distance=..1] run scoreboard players set @s ammo 0
execute as @a[tag=summonturret1] as @e[type=armor_stand,tag=turretone,distance=..1] run scoreboard players set @s reloadtime 200
execute as @a[tag=summonturret1] as @e[type=armor_stand,tag=turretone,distance=..1] run scoreboard players set @s mreloadtime 200
execute as @a[tag=summonturret1] run setblock ~ ~ ~ redstone_block
execute as @a[tag=summonturret1] run scoreboard players add current turretid 1
execute as @a[tag=summonturret1] store result score @e[type=minecraft:armor_stand,tag=turretone] turretid run scoreboard players get current turretid
execute as @a[tag=summonturret1] store result score @s turretone run scoreboard players get current turretid
execute as @a[tag=summonturret1] run tag @s remove summonturret1

execute as @s as @e[type=minecraft:armor_stand,tag=turretone,distance=..2] if score @s turretid = @p[team=engeenier] turretone if entity @e[type=item,nbt={Item:{id:"minecraft:chest"}},distance=..2] run scoreboard players add @s maxammo 10
execute as @s as @e[type=minecraft:armor_stand,tag=turretone,distance=..2] if score @s turretid = @p[team=engeenier] turretone if entity @e[type=item,nbt={Item:{id:"minecraft:chest"}},distance=..2] run kill @e[type=item,nbt={Item:{id:"minecraft:chest"}},distance=..2,limit=1]

execute as @s as @e[type=minecraft:armor_stand,tag=turretone,distance=..2,scores={mreloadtime=6..}] if score @s turretid = @p[team=engeenier] turretone if entity @e[type=item,nbt={Item:{id:"minecraft:redstone"}},distance=..2] run scoreboard players remove @s mreloadtime 1
execute as @s as @e[type=minecraft:armor_stand,tag=turretone,distance=..2,scores={mreloadtime=6..}] if score @s turretid = @p[team=engeenier] turretone if entity @e[type=item,nbt={Item:{id:"minecraft:redstone"}},distance=..2] run kill @e[type=item,nbt={Item:{id:"minecraft:redstone"}},distance=..2,limit=1]