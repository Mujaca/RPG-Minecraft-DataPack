execute as @s[team=mage,tag=new] at @s if entity @e[type=villager,nbt={CustomName:'{"text":"Magie Meister"}'},distance=..3] run function npcs:mage

execute as @s[tag=questreset] run function npcs:questreset