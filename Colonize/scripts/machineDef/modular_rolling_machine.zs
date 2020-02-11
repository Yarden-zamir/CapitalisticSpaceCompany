import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;
#priority 70

//

function addRecipe(itemOutputs as IItemStack[], itemInputs as IItemStack[], processingTickTime as int){
  var machineRegName = "modular_rolling_machine";
  var r = mods.modularmachinery.RecipeBuilder.newBuilder(
    machineRegName+"_"+itemOutputs[0].name, machineRegName, processingTickTime
  );
  //adding inputs
  for input in itemInputs{
    r.addItemInput(input);
  }
  //adding output
  for output in itemOutputs{
    r.addItemOutput(output);
  }

  //build the recipe
  r.build();
}
