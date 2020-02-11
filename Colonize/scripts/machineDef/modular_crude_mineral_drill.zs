import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;
import mods.immersiveengineering.MineralMix;
import mods.immersiveengineering.Excavator;
import scripts.machineDef.generic_drill_addition as drill;

#priority 70

//
static typicalProcessingTime as int = 10;
static outputEfficiency as double = 0.3;
static inputEfficiency as double = 0.1; //It will take about x runs to consume input
static sideProductChance as double = 0.2;

//
function addOre(ore as IItemStack, inputMineral as string){ // simple version
  var mixFailChance as double = Excavator.getMineral(inputMineral).failChance;
  drill.addOre([<minecraft:dirt>.weight(1.0),<factorytech:mined_ore>.weight(sideProductChance),ore.weight(outputEfficiency + mixFailChance)],
    [ore.weight(inputEfficiency),<minecraft:coal>.weight(0.045)], inputMineral, typicalProcessingTime,0,"modular_crude_mineral_drill");
}
