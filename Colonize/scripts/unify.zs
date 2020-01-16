import scripts.settings;
import scripts.lib;
import crafttweaker.recipes.IFurnaceRecipe;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.mods.ILoadedMods;
#priority 20
//maybe seperate to seperate files
//global var copper = <thermalfoundation:material:128>;

print("unifiying...");
//automatic part
var furnaceRecipes = furnace.all;
var uni = settings.ingotsUnified;
for furnaceRecipe in furnaceRecipes{
  for entry in uni.entrySet{
    if (entry.key has furnaceRecipe.output){ //if the output is a part of the oredict
      if (!furnaceRecipe.output.matches(entry.value)){ //if it's not already the wanted recipe
        furnace.remove(furnaceRecipe.output, furnaceRecipe.input);
        furnace.addRecipe(entry.value, furnaceRecipe.input, furnaceRecipe.xp);
      }
    }
  }
}
//manual part (for mods that don't support the automatic process)
if(loadedMods.contains("magneticraft")){
  furnace.remove(<magneticraft:ingots:2>);
}
