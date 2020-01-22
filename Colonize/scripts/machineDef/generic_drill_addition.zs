import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;
import mods.immersiveengineering.MineralMix;
import mods.immersiveengineering.Excavator;


#priority 80
static min as int = 1;
static max as int = 38401;

function addOre(outputItems as WeightedItemStack[], inputItems as WeightedItemStack[], inputMineral as string, time as int,RF as int, machineRegName as string){
  var r = mods.modularmachinery.RecipeBuilder.newBuilder(
    machineRegName+"_"+outputItems[0].stack.name+"_w_"+inputMineral, machineRegName, time
  );
  if (RF>0){
    r.addEnergyPerTickInput(RF);
  }
  r.addMineralInput(inputMineral,1);
  r.addOreRequirement(min,max);
  for input in inputItems{
    r.addItemInput(input.stack);
    r.setChance(input.chance);
  }
  for output in outputItems{
    r.addItemOutput(output.stack);
    r.setChance(output.chance);
  }
  //build the recipe
  r.build();
}
