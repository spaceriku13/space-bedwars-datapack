execute as @a[team=white] at @s run playsound block.note_block.pling master @s ~ ~ ~
tellraw @a[team=white] {"text": "It's a Trap! を購入しました。","color": "gold"}

scoreboard players add @a[team=white] have_traps 1
scoreboard players add @e[type=armor_stand,tag=bed_white] its_a_trap 1

execute if score @s have_traps matches 1 run scoreboard players set $white_slot1 its_a_trap 1
execute if score @s have_traps matches 2 run scoreboard players set $white_slot2 its_a_trap 1
execute if score @s have_traps matches 3 run scoreboard players set $white_slot3 its_a_trap 1
