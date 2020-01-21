import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;
#priority 70

//

function addRecipe(outputItems as float[IItemStack], inputItems as float[IItemStack], inputMineral as string, processingTickTime as int){
  var machineRegName = "modular_crude_mineral_drill";
  var r = mods.modularmachinery.RecipeBuilder.newBuilder(
    machineRegName+"_"+outputItems.entrySet[0].key.name+"_w_"+inputMineral, machineRegName, processingTickTime
  );

  //mineral
  r.addMineralInput(inputMineral,1);
  //adding inputs
  for input in inputItems.entrySet{
    r.addItemInput(input.key);
    r.setChance(input.value);
  }
  //adding output
  for output in outputItems.entrySet{
    r.addItemOutput(output.key);
    r.setChance(output.value);
  }

  //build the recipe
  r.build();
}
