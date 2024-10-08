execute store result score @s buy0b run clear @s *[item_name='{"text": "✘","color": "red"}']
execute if score @s buy0b matches 1.. run function shop:shop2/buy/0b

execute store result score @s buy_sharpness run clear @s *[custom_data={shop:sharpness,buy:1b}]
execute if score @s buy_sharpness matches 1.. run function shop:shop2/buy/sharpness

execute store result score @s buy_protection run clear @s *[custom_data={shop:protection,buy:1b}]
execute if score @s buy_protection matches 1.. run function shop:shop2/buy/protection

execute store result score @s buy_miner run clear @s *[custom_data={shop:miner,buy:1b}]
execute if score @s buy_miner matches 1.. run function shop:shop2/buy/miner

execute store result score @s buy_healpool run clear @s *[custom_data={shop:healpool,buy:1b}]
execute if score @s buy_healpool matches 1.. run function shop:shop2/buy/healpool

execute store result score @s buy_forge run clear @s *[custom_data={shop:forge,buy:1b}]
execute if score @s buy_forge matches 1.. run function shop:shop2/buy/forge

###empty
execute store result score @s buy_empty run clear @s *[custom_data={shop:empty}]
execute if score @s buy_empty matches 1.. run function shop:shop2/buy/empty


#traps
execute store result score @s buy_its_a_trap run clear @s *[custom_data={shop:its_a_trap,buy:1b}]
execute if score @s buy_its_a_trap matches 1.. run function shop:shop2/buy/traps/its_a_trap

execute store result score @s buy_counter_trap run clear @s *[custom_data={shop:counter_trap,buy:1b}]
execute if score @s buy_counter_trap matches 1.. run function shop:shop2/buy/traps/counter_trap

execute store result score @s buy_alarm_trap run clear @s *[custom_data={shop:alarm_trap,buy:1b}]
execute if score @s buy_alarm_trap matches 1.. run function shop:shop2/buy/traps/alarm_trap

execute store result score @s buy_miner_fatigue_trap run clear @s *[custom_data={shop:miner_fatigue_trap,buy:1b}]
execute if score @s buy_miner_fatigue_trap matches 1.. run function shop:shop2/buy/traps/miner_fatigue_trap
