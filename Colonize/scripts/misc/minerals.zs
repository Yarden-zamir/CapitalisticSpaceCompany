import crafttweaker.item.IItemStack;
import scripts.settings;

import mods.immersiveengineering.MineralMix;
import mods.immersiveengineering.Excavator;

import scripts.machineDef.modular_mechanical_drill;
//https://ftb.gamepedia.com/Mineral_Deposits
//

Excavator.removeMineral("Bauxite"); // Aluminum
Excavator.removeMineral("Cassiterite"); //Tin //Do I want tin?
Excavator.removeMineral("Galena"); //Lead and silver
Excavator.removeMineral("Lead"); //lead and silver
Excavator.removeMineral("Silver"); //lead and silver
Excavator.removeMineral("Galena"); //Galena
Excavator.removeMineral("Copper");
Excavator.removeMineral("Gold");
Excavator.removeMineral("Iron");
Excavator.removeMineral("Quartzite");
Excavator.removeMineral("Nickel");
Excavator.removeMineral("Platinum");
Excavator.removeMineral("Cinnabar");
Excavator.removeMineral("Uranium");//maybe not? but maybe uranium is based on glowstone
Excavator.removeMineral("Magnetite");
Excavator.removeMineral("Pyrite");
Excavator.removeMineral("Lapis");
Excavator.removeMineral("Silt");
Excavator.removeMineral("Coal");


addMineral("Iron",2,["oreIron"], [0.9]);
addMineral("Coal",2,["oreCoal"], [0.9]);
addMineral("Redstone",1,["oreRedstone","oreUranium"], [0.6,0.025]);
function addMineral(mineralName as string, weight as int, ores as string[], chances as double[]){
  Excavator.addMineral(mineralName, weight, settings.excavatorFailChance, ores, chances);
}

// modular_mechanical_drill.applyRecipes();
