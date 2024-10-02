#own team
    execute as @e[type=armor_stand,tag=bed_green] at @s if entity @p[predicate=main:destroy_bed,team=green] run function main:bed/replace
    # execute as @e[type=armor_stand,tag=bed_green] at @s if entity @p[predicate=main:destroy_bed,team=green] run scoreboard players reset @a destroy_bed
    execute as @e[type=armor_stand,tag=bed_green] at @s if entity @p[predicate=main:destroy_bed,team=green] run tellraw @a[predicate=main:destroy_bed] {"text": "自分のチームのベッドは破壊できません！","color": "red"}
    execute as @e[type=armor_stand,tag=bed_green] at @s if entity @p[predicate=main:destroy_bed,team=green] run return fail

execute as @a[team=green] at @s run playsound entity.wither.death master @s ~ ~ ~ 0.6
execute at @e[tag=bed_green] run playsound entity.ender_dragon.ambient master @a[team=!green] ~ ~ ~
# execute at @e[tag=bed_green] run effect give @a[distance=..4] resistance 1 99 true
# execute at @e[tag=bed_green] run summon lightning_bolt ~ ~ ~

tag @a[team=green] add final

title @a times 10 40 10
title @a[team=green] subtitle {"text": "You will no longer respawn!","color": "white"}
title @a[team=green] title {"text": "BED DESTROYED!","color": "red"}

execute as @a[predicate=main:destroy_bed] run tellraw @a ""
execute as @a[predicate=main:destroy_bed] run tellraw @a [{"text": "","color": "gray"},{"text": "BED DESTRUCTION > ","color": "white","bold": true},{"text": "Green Bed","color": "green"},{"text": " は "},{"selector": "@s"},{"text": " に破壊されました！"}]
execute as @a[predicate=main:destroy_bed] run tellraw @a ""

function main:game/destroy_bed/scoreboard/green

tag @e[type=armor_stand,tag=bed_green] add destroyed

scoreboard players add @a[predicate=main:destroy_bed] broken_beds 1
scoreboard players reset @a destroy_bed