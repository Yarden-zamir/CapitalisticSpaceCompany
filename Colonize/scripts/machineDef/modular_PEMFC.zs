import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

#priority 70

//

//no more than 2 liquid outputs
function addRecipe(
liquidOutput as ILiquidStack,
  fluidInputs as ILiquidStack[],
      processingTickTime as int,
       flux as int
){
  var machineRegName = "modular_PEMFC";
  var r = mods.modularmachinery.RecipeBuilder.newBuilder(
    machineRegName+"_"+liquidOutput.name+"_"+fluidInputs[0].name, machineRegName, processingTickTime
  );
  //adding inputs
  for input in fluidInputs{
    r.addFluidInput(input);
  }
  //adding output
  r.addFluidOutput(liquidOutput);
  r.addEnergyPerTickOutput(flux);

  //build the recipe
  r.build();
}
