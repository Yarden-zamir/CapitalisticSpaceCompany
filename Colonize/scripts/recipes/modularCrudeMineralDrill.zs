import scripts.machineDef.modular_crude_mineral_drill;

//https://ftb.gamepedia.com/Mineral_Deposits

// modular_crude_mineral_drill.
//   addRecipe([<minecraft:dirt>%1,<factorytech:mined_ore>%0.2,<minecraft:iron_ore>%0.6
//     ], [<minecraft:iron_ore>%0.2,<minecraft:coal>%0.025], "Iron", 10);

modular_crude_mineral_drill.addOre(<minecraft:iron_ore>,"Iron");
modular_crude_mineral_drill.addOre(<minecraft:gold_ore>,"Gold");
modular_crude_mineral_drill.addOre(<immersiveengineering:ore>,"Copper");
