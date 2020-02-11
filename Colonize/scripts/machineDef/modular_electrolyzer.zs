import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

#priority 70

//

//no more than 2 liquid outputs
function addRecipe(
  liquidInput as ILiquidStack,
   liquidOutputs as ILiquidStack[],
    itemOutputs as IItemStack[],
     itemInputs as IItemStack[],
      processingTickTime as int,
       flux as int
){
  var machineRegName = "modular_electrolyzer";
  var r = mods.modularmachinery.RecipeBuilder.newBuilder(
    machineRegName+"_"+liquidOutputs[0].name+"_"+liquidInput.name, machineRegName, processingTickTime
  );
  //adding inputs
  r.addFluidInput(liquidInput);
  for input in itemInputs{
    r.addItemInput(input);
  }
  //adding output
  for output in liquidOutputs{
    r.addFluidOutput(output);
  }
  //adding output
  for output in itemOutputs{
    r.addItemOutput(output);
  }
  r.addEnergyPerTickInput(flux);
  //build the recipe
  r.build();
}
