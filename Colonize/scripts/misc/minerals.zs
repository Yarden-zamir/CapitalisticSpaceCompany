import crafttweaker.item.IItemStack;

import mods.immersiveengineering.MineralMix;
import mods.immersiveengineering.Excavator;

import scripts.machineDef.modular_crude_mineral_drill;
import scripts.machineDef.modular_powered_mineral_drill;

//https://ftb.gamepedia.com/Mineral_Deposits
//

Excavator.removeMineral("Bauxite"); // Aluminum
// Excavator.removeMineral("Cassiterite"); //Tin //Do I want tin?
Excavator.removeMineral("Galena"); //Lead and silver
Excavator.removeMineral("Lead"); //lead and silver
Excavator.removeMineral("Silver"); //lead and silver
Excavator.removeMineral("Galena"); //Galena

var Iron = Excavator.getMineral("Iron");
var Gold = Excavator.getMineral("Gold");
var Copper = Excavator.getMineral("Copper");
print("Iron fail chance is " + Iron.failChance);
print("Gold fail chance is " + Gold.failChance);
print("Copper fail chance is " + Copper.failChance);

addOre(<minecraft:iron_ore>,"Iron");
addOre(<minecraft:gold_ore>,"Gold");
addOre(<immersiveengineering:ore>,"Copper");

function addOre(ore as IItemStack, inputMineral as string){
  modular_crude_mineral_drill.addOre(ore,inputMineral);
  modular_powered_mineral_drill.addOre(ore,inputMineral);
}
