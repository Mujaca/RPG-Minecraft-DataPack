execute if block ~1 ~ ~ minecraft:lectern if entity @s[team=nojob] run function main:jobchoose
execute if block ~-1 ~ ~ minecraft:lectern if entity @s[team=nojob] run function main:jobchoose
execute if block ~ ~ ~1 minecraft:lectern if entity @s[team=nojob] run function main:jobchoose
execute if block ~ ~ ~-1 minecraft:lectern if entity @s[team=nojob] run function main:jobchoose
execute if block ~1 ~ ~1 minecraft:lectern if entity @s[team=nojob] run function main:jobchoose
execute if block ~-1 ~ ~1 minecraft:lectern if entity @s[team=nojob] run function main:jobchoose
execute if block ~-1 ~ ~1 minecraft:lectern if entity @s[team=nojob] run function main:jobchoose
execute if block ~1 ~ ~-1 minecraft:lectern if entity @s[team=nojob] run function main:jobchoose

execute if block ~1 ~ ~ minecraft:lectern if entity @s[team=!nojob] unless score @s skillpoints matches 0 run function main:skillpoints
execute if block ~-1 ~ ~ minecraft:lectern if entity @s[team=!nojob] unless score @s skillpoints matches 0 run function main:skillpoints
execute if block ~ ~ ~1 minecraft:lectern if entity @s[team=!nojob] unless score @s skillpoints matches 0 run function main:skillpoints
execute if block ~ ~ ~-1 minecraft:lectern if entity @s[team=!nojob] unless score @s skillpoints matches 0 run function main:skillpoints
execute if block ~1 ~ ~1 minecraft:lectern if entity @s[team=!nojob] unless score @s skillpoints matches 0 run function main:skillpoints
execute if block ~-1 ~ ~1 minecraft:lectern if entity @s[team=!nojob] unless score @s skillpoints matches 0 run function main:skillpoints
execute if block ~-1 ~ ~1 minecraft:lectern if entity @s[team=!nojob] unless score @s skillpoints matches 0 run function main:skillpoints
execute if block ~1 ~ ~-1 minecraft:lectern if entity @s[team=!nojob] unless score @s skillpoints matches 0 run function main:skillpoints