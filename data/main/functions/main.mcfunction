execute as @a[tag=!setup] at @s run function main:setup
execute as @a at @s run function main:playerinfos
execute as @a at @s run function healthsystem:healthregen
execute as @a at @s if score @s damagedealt > @s null run function healthsystem:strength
execute as @a at @s if score @s damage > @s null run function healthsystem:health

execute as @a[team=nojob] at @s run function nojob:main
execute as @a[team=mage] at @s run function mage:main
execute as @a[team=priest] at @s run function priest:main
execute as @a[team=paladin] at @s run function paladin:main
execute as @a[team=knight] at @s run function knight:main
execute as @a[team=engeenier] at @s run function engeenier:main

execute as @a run function main:buffs
execute as @e[type=!armor_stand] at @s if entity @e[type=armor_stand,distance=..5] run function main:hit

execute as @a at @s if score @s health > @s maxhealth store result score @s health run scoreboard players get @s maxhealth
execute as @a at @s if score @s mana > @s maxmana store result score @s mana run scoreboard players get @s maxmana
effect give @a minecraft:resistance 1000000 10 true
scoreboard players set @a null 0