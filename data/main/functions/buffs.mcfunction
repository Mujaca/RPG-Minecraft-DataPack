execute if score @s buffduration > @s null run scoreboard players remove @s buffduration 1
execute as @a if score @s[tag=strengthbuffed] buffduration = @s null store result score @s strength run scoreboard players get @s ostrength
execute if entity @s[tag=strengthbuffed] if score @s buffduration = @s null store result score @s strength run tag @s remove strengthbuffed
execute if entity @s[tag=defensebuffed] if score @s buffduration = @s null store result score @s defense run scoreboard players get @s odefense
execute if entity @s[tag=defensebuffed] if score @s buffduration = @s null store result score @s strength run tag @s remove defensebuffed
execute if entity @s[tag=magicpowerbuffed] if score @s buffduration = @s null store result score @s magicpower run scoreboard players get @s omagicpower
execute if entity @s[tag=magicpowerbuffed] if score @s buffduration = @s null store result score @s strength run tag @s remove magicpowerbuffed
execute if entity @s[tag=magicdefensebuffed] if score @s buffduration = @s null store result score @s magicdefense run scoreboard players get @s omagicdefense
execute if entity @s[tag=magicdefensebuffed] if score @s buffduration = @s null store result score @s strength run tag @s remove magicdefensebuffed