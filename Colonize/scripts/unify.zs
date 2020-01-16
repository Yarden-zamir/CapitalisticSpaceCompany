import scripts.settings;
import scripts.lib;
import crafttweaker.recipes.IFurnaceRecipe;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
#priority 20
//global var copper = <thermalfoundation:material:128>;

print("unifiying...");

var furnaceRecipes = furnace.all;
var uni = settings.ingotsUnified;
for furnaceRecipe in furnaceRecipes{
  for entry in uni.entrySet{
    for ore in furnaceRecipe.output.ores{
      if (ore.name == entry.key.name){
        furnace.remove(furnaceRecipe.output, furnaceRecipe.input);
        furnace.addRecipe(entry.value, furnaceRecipe.input, furnaceRecipe.xp);
      }
    }
  }
}
