import scripts.settings;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.recipes.ICraftingRecipe;
import mods.tconstruct.Casting;
import mods.tconstruct.Alloy;
import mods.jei.JEI;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.AlloySmelter;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.Crusher;
import mods.factorytech.DrillGrinder;
#priority 90
static disabledItems as IItemStack[]= [];

function disableItem(item as IItemStack){
  //any operation on a disabled item happends here
  item.addTooltip(settings.toolTipForDisabled);
  disabledItems += item;
  if (loadedMods.contains("factorytech")){
    DrillGrinder.removeRecipe(item);
  }
  if (loadedMods.contains("immersiveengineering")){
    // MetalPress.removeRecipe(item);
    // //Alloy Smelter
    // AlloySmelter.removeRecipe(item);
    // //ArcFurnace
    // ArcFurnace.removeRecipe(item);
    // //
    // Crusher.removeRecipe(item);
    // Crusher.removeRecipesForInput(item);
  }
  //smeltry
  if(loadedMods.contains("tconstruct")){
    Casting.removeTableRecipe(item);
    Casting.removeBasinRecipe(item);
    if (!isNull(item.liquid)){
      Alloy.removeRecipe(item.liquid);
    }
  }

  //furnace
  furnace.remove(item);
  //crafting table removal
  if (!settings.showDisabled){
    JEI.removeAndHide(item);
  }else{
    recipes.remove(item,false);
  }
}

function isDisabled(item as IItemStack) as bool{
  if (disabledItems has item){
    return true;
  }
  return false;
}

function disableItems(items as IItemStack[]){
  for item in items {
    disableItem(item);
  }
}
