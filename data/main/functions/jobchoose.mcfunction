execute as @s[scores={klassen=1..}] run tag @s remove send
scoreboard players reset @s klassen
scoreboard players enable @s job
scoreboard players enable @s klassen

execute as @s[tag=!send] run tellraw @p ["",{"text":"Wilkommen "},{"selector":"@s"},{"text":"! \nIn deinem Inventar befinden sich 5 Bücher! In diesen Büchern stehen Informationen\nzu den Klassen. Wenn du dir noch nicht sicher bist kannst du dieses Dialog Fenster jederzeit mit /trigger klassen aufrufen.\nWähle deine Klasse (NICHT ÄNDERBAR) : \n- "},{"text":"Magier","underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger job set 1"}},{"text":"\n- "},{"text":"Priester","underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger job set 2"}},{"text":"\n- "},{"text":"Paladin","underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger job set 3"}},{"text":"\n- "},{"text":"Ritter","underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger job set 4"}},{"text":"\n- "},{"text":"Techniker","underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger job set 5"}}]
tag @s add send