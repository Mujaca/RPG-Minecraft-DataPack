execute if entity @s[scores={fireballcooldown=0}] if entity @e[tag=fireballspell,type=armor_stand,distance=..2,tag=!hit] run scoreboard players operation @e[type=armor_stand,tag=fireballspell,distance=..2] damage -= @s magicdefense
execute if entity @s[scores={fireballcooldown=0}] if entity @e[tag=fireballspell,type=armor_stand,distance=..2,tag=!hit] if score @s[tag=fireballspell,type=armor_stand,distance=..2] damage < @s null run scoreboard players set @e[tag=fireballspell,type=armor_stand,distance=..2] damage 0
execute if entity @s[scores={fireballcooldown=0}] if entity @e[tag=fireballspell,type=armor_stand,distance=..2,tag=!hit] run scoreboard players operation @s health -= @e[type=minecraft:armor_stand,tag=fireballspell,distance=..2] damage
execute if entity @s[scores={fireballcooldown=0}] if entity @e[tag=fireballspell,type=armor_stand,distance=..2,tag=!hit] run tag @e[type=armor_stand,tag=fireballspell,distance=..2] add hit
execute if entity @s[scores={fireballcooldown=0}] if entity @e[tag=fireballspell,type=armor_stand,distance=..2] run function healthsystem:health
execute if entity @s[scores={fireballcooldown=0}] if entity @e[tag=fireballspell,type=armor_stand,distance=..2] run kill @e[type=armor_stand,tag=fireballspell,distance=..1]

scoreboard players set @e[type=!minecraft:player,type=!armor_stand,tag=!cooldown1] fireballcooldown 0
tag @e[tag=!cooldown1] add cooldown1

execute if entity @s[scores={thundercooldown=0..1180}] 
execute if entity @s[scores={thundercooldown=0..1180}] if entity @e[tag=thunderspell,type=armor_stand,distance=..2,scores={damage=2}] run summon minecraft:lightning_bolt ~ ~ ~
execute if entity @s[scores={thundercooldown=0..1180}] if entity @e[tag=thunderspell,type=armor_stand,distance=..2,scores={damage=2}] run summon minecraft:lightning_bolt ~ ~ ~
execute if entity @s[scores={thundercooldown=0..1180}] if entity @e[tag=thunderspell,type=armor_stand,distance=..2,scores={damage=3}] run summon minecraft:lightning_bolt ~ ~ ~
execute if entity @s[scores={thundercooldown=0..1180}] if entity @e[tag=thunderspell,type=armor_stand,distance=..2,scores={damage=3}] run summon minecraft:lightning_bolt ~ ~ ~
execute if entity @s[scores={thundercooldown=0..1180}] if entity @e[tag=thunderspell,type=armor_stand,distance=..2,scores={damage=3}] run summon minecraft:lightning_bolt ~ ~ ~
execute if entity @s[scores={thundercooldown=0..1180}] if entity @e[tag=thunderspell,type=armor_stand,distance=..2] run kill @e[type=armor_stand,tag=thunderspell,distance=..2]

scoreboard players set @e[type=!minecraft:player,type=!armor_stand,tag=!cooldown2] thundercooldown 0
tag @e[tag=!cooldown2] add cooldown2

execute if entity @s[tag=!heal] if entity @e[tag=healspell,type=armor_stand,distance=..2] run scoreboard players operation @s health += @e[tag=healspell,type=armor_stand,distance=..2] damage
execute if entity @s[tag=!heal] as @e[tag=healspell,type=armor_stand,distance=..2] run kill @s