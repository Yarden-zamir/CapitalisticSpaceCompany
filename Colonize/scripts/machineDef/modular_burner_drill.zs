import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;
import mods.immersiveengineering.MineralMix;
import mods.immersiveengineering.Excavator;
import crafttweaker.liquid.ILiquidStack;

#priority 70

static machineRegName as string = "modular_burner_drill";
//
static typicalProcessingTime as int = 30;
static outputEfficiency as double = 0.4025;
static inputEfficiency as double = 0.1 ; //It will take about x runs to consume input
static sideProductChance as double = 0.125 ;
static baseEnergyRec as int = 1; //move to settings
//
static min as int = 1;
static max as int = 1.0/0;

function addSolidFuel(fuel as IItemStack){
  var r = RecipeBuilder.newBuilder(
    machineRegName+"_"+fuel.name+"_w_"+"Iron", machineRegName, 55
  );
  r.addItemInput(fuel);
  r.setChance(0.36);
  r.addItemOutput(<minecraft:iron_ore>);
  r.addMineralInput("Iron",-1);
  r.addOreRequirement(min,max);
  r.build();
}
function addFluidFuel(fuel as ILiquidStack,burnChance as float){
  var r = RecipeBuilder.newBuilder(
    machineRegName+"_"+fuel.name+"_w_"+"Iron", machineRegName, 55
  );
  r.addFluidInput(fuel);
  print(burnChance);
  r.setChance(burnChance);
  r.addItemOutput(<minecraft:iron_ore>);
  r.addMineralInput("Iron",-1);
  r.addOreRequirement(min,max);
  r.build();
}
