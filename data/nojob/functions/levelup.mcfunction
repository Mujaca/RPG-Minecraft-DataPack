scoreboard players add @s level 1
scoreboard players add @s skillpoints 1
scoreboard players add @s maxhealth 10
scoreboard players add @s regen 1
scoreboard players add @s strength 3
scoreboard players add @s defense 1
scoreboard players add @s magicdefense 1

execute store result score @s health run scoreboard players get @s maxhealth

scoreboard players add @s xpneeded 2
scoreboard players set @s xp 0
xp set @s 0 levels

execute as @s[scores={level=5}] run tellraw @p ["",{"text":"Herzlichen Glückwunsch zu Level 5 "},{"selector":"@s"},{"text":"!\nWenn du jetzt zu einem "},{"text":"Lectern","underlined":true,"color":"blue","clickEvent":{"action":"open_url","value":"https://minecraft.gamepedia.com/Lectern"}},{"text":" gehst kannst du dir eine Klasse auswählen!\n "}]