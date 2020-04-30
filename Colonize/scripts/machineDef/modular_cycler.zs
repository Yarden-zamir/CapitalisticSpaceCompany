import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.modularmachinery.RecipeBuilder;

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
  var recipeName as string = machineRegName;
  if (input.hasTag){
    recipeName+="inTag: "+input.tag+ " ";
  }
  if (output.hasTag){
    recipeName+="outTag: "+output.tag+ " ";
  }
  recipeName+=output.name+" <- ";
  recipeName+=input.name;
  var r = RecipeBuilder.newBuilder(
    recipeName, machineRegName, processingTickTime
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
