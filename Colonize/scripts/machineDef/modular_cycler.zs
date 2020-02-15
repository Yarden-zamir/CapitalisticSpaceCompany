import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

#priority 70

//

//no more than 2 liquid outputs

function addRecipe(
  output as IItemStack, input as IItemStack
){
  var part as IItemStack = <minecraft:stick>;
  var chance as double = 0.05;
  var processingTickTime as int = 4;
  var machineRegName = "modular_cycler";
  var r = mods.modularmachinery.RecipeBuilder.newBuilder(
    machineRegName+"_"+output.name+"_"+input.name, machineRegName, processingTickTime
  );
  //adding inputs
  r.addItemInput(input);
  r.addItemInput(part);
  r.setChance(chance);
  //adding output
  r.addItemOutput(output);
  //build the recipe
  r.build();
}
