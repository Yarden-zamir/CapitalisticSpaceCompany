import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;
import mods.immersiveengineering.MineralMix;
import mods.immersiveengineering.Excavator;
import scripts.machineDef.generic_drill_addition as drill;

#priority 70

//
static typicalProcessingTime as int = 30;
static outputEfficiency as double = 0.5025 ;
static inputEfficiency as double = 0.1 ; //It will take about x runs to consume input
static sideProductChance as double = 0.125 ;
static baseEnergyRec as int = 1; //move to settings
//
function addOre(ore as IItemStack, inputMineral as string){ // simple version
  drill.addOre([<minecraft:dirt>.weight(1.0),<factorytech:mined_ore>.weight(sideProductChance),ore.weight(outputEfficiency)],
    [ore.weight(inputEfficiency)], inputMineral, typicalProcessingTime, baseEnergyRec,"modular_powered_mineral_drill");
}
