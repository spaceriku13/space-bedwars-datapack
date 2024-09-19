clear @s

#bed
give @s armor_stand[item_name='{"color":"dark_gray","text":"Gray Bed"}',entity_data={id:"minecraft:armor_stand",CustomNameVisible:1b,Marker:1b,Tags:["bed","bed_gray"],CustomName:'{"color":"dark_gray","text":"Gray Bed"}'}] 1
#spawnpoint
give @s armor_stand[item_name='{"color":"dark_gray","text":"Gray Spawn"}',entity_data={id:"minecraft:armor_stand",CustomNameVisible:1b,Marker:1b,Tags:["spawn","spawn_gray"],CustomName:'{"color":"dark_gray","text":"Gray Spawn"}'}] 1
#generator
give @s armor_stand[item_name='{"color":"dark_gray","text":"Gray Generator"}',entity_data={id:"minecraft:armor_stand",CustomNameVisible:1b,Marker:1b,Tags:["generator","irons","golds","forge","forge_gray"],CustomName:'{"color":"dark_gray","text":"Gray Generator"}'}] 1
#shop
give @s armor_stand[item_name='"ITEM SHOP"',entity_data={id:"minecraft:armor_stand",CustomNameVisible:1b,Marker:1b,Tags:["shop","shop1"],CustomName:'"ITEM SHOP"'}] 1
give @s armor_stand[item_name='"TEAM UPGRADES"',entity_data={id:"minecraft:armor_stand",CustomNameVisible:1b,Marker:1b,Tags:["shop","shop2"],CustomName:'"TEAM UPGRADES"'}] 1

#chest
give @s chest
give @s ender_chest

#clear stand
loot replace entity @s hotbar.8 loot bedwars:clear_stand