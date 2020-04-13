execute as @a[tag=dead] as @e[type=zombie,tag=Leiche] if score @s corpseid = @p[tag=dead] corpseid run tp @p[tag=dead] @s
execute as @a[tag=dead] as @e[type=zombie,tag=Leiche] if score @s corpseid = @p[tag=dead] corpseid run scoreboard players remove @p[tag=dead] corpsetime 1
execute as @a[tag=dead] as @e[type=zombie,tag=Leiche] if score @s corpseid = @p[tag=dead] corpseid if score @p[tag=dead] corpsetime < @p[tag=dead] null run tag @p[tag=dead] add kill

execute as @a[tag=dead] as @e[type=zombie,tag=Leiche] at @s if score @s corpseid = @p[tag=dead] corpseid if entity @a[tag=!dead,distance=..2,tag=!damagetaken] run scoreboard players remove @p[tag=dead] revivetime 1
execute as @a[tag=dead] as @e[type=zombie,tag=Leiche] if score @s corpseid = @p[tag=dead] corpseid if entity @a[tag=!dead,distance=..2,tag=!damagetaken] if score @p[tag=dead] revivetime < @p[tag=dead] null run tag @p[tag=dead] add revive

execute as @a[tag=revive] run kill @e[type=zombie,tag=Leiche,distance=..2]
execute as @a[tag=revive] run gamemode survival @s
execute as @a[tag=revive] run tag @s remove dead
execute as @a[tag=revive] run tag @s remove revive

execute as @a[tag=kill] run kill @e[type=zombie,tag=Leiche,distance=..1]
execute as @a[tag=kill] run kill @s
execute as @a[tag=kill] run xp set @s 0 levels
execute as @a[tag=kill] run tag @s remove dead
execute as @a[tag=kill] run gamemode survival @s
execute as @a[tag=kill] run tag @s remove kill