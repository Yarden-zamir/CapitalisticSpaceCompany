import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;
import mods.immersiveengineering.MineralMix;
import mods.immersiveengineering.Excavator;


#priority 70

//
static typicalProcessingTime as int = 30;
static outputEfficiency as double = 0.4025 ;
static inputEfficiency as double = 0.1 ; //It will take about x runs to consume input
static sideProductChance as double = 0.125 ;
static baseEnergyRec as int = 1; //move to settings
//
static min as int = 1;
static max as int = 38401;

function addOre(ore as IItemStack, inputMineral as string){ // ore is the output item that the player gets and inputMineral is the input mineral from IE's registery
  //loop through all possilbe fuels and recreate the recipe with them as an option
}

applyRecipes();
function applyRecipes(){
  var machineRegName = "modular_burner_drill";
  var r = RecipeBuilder.newBuilder(
    machineRegName+"_"+<minecraft:coal>.name+"_w_"+"Iron", machineRegName, 55
  );
  r.addItemInput(<minecraft:coal>);
  var burnChance = (<minecraft:coal>.burnTime/6000+0.1);
  r.setChance(burnChance);
  r.addItemOutput(<minecraft:iron_ore>);
  r.addMineralInput("Iron",-1);
  r.addOreRequirement(min,max);
  r.build();
}
