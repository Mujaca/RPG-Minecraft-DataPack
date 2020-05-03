tellraw @s[tag=!sendskills] ["",{"text":"Du hast "},{"score":{"name":"@s","objective":"skillpoints"}},{"text":" Skillpunkt(e), die du vergeben kannst! Wähle einen Skill in welchen den willst du den packen?\n- "},{"text":"Leben","underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger skills set 1"}},{"text":"\n- "},{"text":"Stärke","underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger skills set 2"}},{"text":"\n- "},{"text":"Defense","underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger skills set 3"}},{"text":"\n- "},{"text":"Magische Kraft","underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger skills set 4"}},{"text":"\n- "},{"text":"Magische Verteidigung","underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger skills set 5"}},{"text":"\n- "},{"text":"Lebensregeneration","underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger skills set 6"}}]
scoreboard players enable @s skills
tag @s add sendskills

execute if score @s skills matches 1 run scoreboard players add @s maxhealth 20
execute if score @s skills matches 1 run scoreboard players remove @s skillpoints 1
execute if score @s skills matches 1 run tag @s remove sendskills
execute if score @s skills matches 1 run scoreboard players reset @s skills

execute if score @s skills matches 2 run scoreboard players add @s strength 3
execute if score @s skills matches 2 run scoreboard players remove @s skillpoints 1
execute if score @s skills matches 2 run tag @s remove sendskills
execute if score @s skills matches 2 run scoreboard players reset @s skills

execute if score @s skills matches 3 run scoreboard players add @s defense 3
execute if score @s skills matches 3 run scoreboard players remove @s skillpoints 1
execute if score @s skills matches 3 run tag @s remove sendskills
execute if score @s skills matches 3 run scoreboard players reset @s skills

execute if score @s skills matches 4 run scoreboard players add @s magicpower 4
execute if score @s skills matches 4 run scoreboard players remove @s skillpoints 1
execute if score @s skills matches 4 run tag @s remove sendskills
execute if score @s skills matches 4 run scoreboard players reset @s skills

execute if score @s skills matches 5 run scoreboard players add @s magicdefense 2
execute if score @s skills matches 5 run scoreboard players remove @s skillpoints 1
execute if score @s skills matches 5 run tag @s remove sendskills
execute if score @s skills matches 5 run scoreboard players reset @s skills

execute if score @s skills matches 6 run scoreboard players add @s regen 3
execute if score @s skills matches 6 run scoreboard players remove @s skillpoints 1
execute if score @s skills matches 6 run tag @s remove sendskills
execute if score @s skills matches 6 run scoreboard players reset @s skills