execute as @a[scores={level=5..}] at @s run function main:lecterncheck
execute as @a[scores={klassen=1..}] run function main:jobchoose
function nojob:xp

execute as @s[scores={job=1}] run function mage:join
execute as @s[scores={job=2}] run function priest:join
execute as @s[scores={job=3}] run function paladin:join
execute as @s[scores={job=4}] run function knight:join
execute as @s[scores={job=5}] run function engeenier:join