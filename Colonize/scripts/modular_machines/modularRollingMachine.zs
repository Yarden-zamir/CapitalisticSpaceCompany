import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;
#priority 70

//

function addRecipe(itemOutput as IItemStack, inputItems as IItemStack[], processingTickTime as int){
  var machineRegName = "modular_rolling_machine";
  var r = mods.modularmachinery.RecipeBuilder.newBuilder(
    machineRegName+"_"+itemOutput.name, machineRegName, processingTickTime
  );
  //adding inputs
  for input in inputItems{
    r.addItemInput(input);
  }
  //adding output
  r.addItemOutput(itemOutput);

  //build the recipe
  r.build();
}
