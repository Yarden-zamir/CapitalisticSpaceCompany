import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
#priority 70

function addRecipe(itemOutput as IItemStack, inputItems as IIngredient[], processingTickTime as int){
  var r = mods.modularmachinery.RecipeBuilder.newBuilder(
    machineRegName+"_"+itemOutput.name, "modular_rolling_machine", processingTickTime
  );
}
