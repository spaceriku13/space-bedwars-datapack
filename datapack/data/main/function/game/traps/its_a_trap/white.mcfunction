#team title
title @a[team=white] times 10 40 10
title @a[team=white] subtitle ""
title @a[team=white] title {"text": "Trap Activated!","color": "yellow"}

#@s
title @s times 10 40 10
title @s subtitle ""
title @s title {"text": "It's a Trap!","color": "red"}
effect give @s blindness 8 0 true
effect give @s slowness 8 0 true

#tellraw
tellraw @a[team=white] [{"text": "It's a Trap!","color": "yellow"},{"text": " が発動しました！","color": "aqua"}]

scoreboard players remove @e[type=armor_stand,tag=bed_white] its_a_trap 1
tag @s add trap_cooldown
function main:game/traps/slot_reload/white
