tag @e[type=item,nbt={Item:{id:"minecraft:writable_book"}},distance=..1] add speelbook
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:writable_book",Count:1b}}] at @s if block ~ ~-1 ~ enchanting_table run tag @s add craftedspellbook
execute as @e[tag=craftedspellbook] at @s run summon minecraft:item ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,PickupDelay:0,Motion:[0.0,0.1,0.0],CustomName:'{"text":"Spellbook","color":"green"}',Item:{id:"minecraft:written_book",Count:1b,tag:{pages:['{"text":"Feuerball\\n\\nAb Level 5 benutzbar\\n\\nHerstellung : Staff Base + Flint and Steel auf den Enchanting Table\\n\\nMana Kosten : 15 Mana per Use\\n\\nCooldown : 1 Sec\\n\\nBase Damage : 5/10/20"}','{"text":"Eissturm\\n\\nAb Level 7 benutzbar\\n\\nHerstellung : Staff Base + Snowball auf den Enchanting Table\\n\\nMana Kosten: 15\\n\\nCooldown : 3 sec per Use\\n\\nBase Damage : 1/3/5 per sec\\nSlowness(2) Dauer : 5/10/15 sec"}','{"text":"Throwable Thunder\\n\\nAb Level 9 nutzbar\\n\\nHerstellung : Staff Base + Ghast Tear auf den Enchanting Table\\n\\nMana Kosten : 60\\n\\nCooldown : 15 sec\\n\\nBase Damage: /\\nErschaffte Blitze : 1/2/3"}','{"text":"Luft konzentrieren\\n\\nAb Level 10 nutzbar\\n\\nHerstellung: Staff Base + Feather auf den Enchanting Table\\n\\nMana Kosten: 20\\n\\nCooldown : 15 sec per Use"}','{"text":"Luft Wand\\n\\nAb Level 10 nutzbar\\n\\nHerstellung: StaffBase + Glass auf den Enchanting Table\\n\\nMana Kosten : 70\\n\\nCooldown : 60 sec per Use\\n\\nSchützt 3/5/10 sec vor jedlichen Schaden\\n(Benötigt Konzentrierte Luft!)"}','{"text":"Wolke erschaffen\\n\\nAb Level 13 nutzbar\\n\\nHerstellung: StaffBase + Wool auf den Enchanting Table\\n\\nMana Kosten : 45\\n\\nCooldown : 30 sec per Use\\n\\nWolke hält 10/20/30 Sec\\n\\n(Benötigt Konzentrierte Luft!)"}','{"text":"Staff Rezepte : \\n\\nTier 1 : Stick + Glowestone Dust auf den Enchanting Table\\n\\nTier 2 : Blaze Rod + Diamond in einem Cauldron\\n\\nTier 3 : Tier 2 Base + Nether Star auf den Enchanting Table"}'],title:Speelbook,author:Zaubertisch}}}
kill @e[tag=craftedspellbook]