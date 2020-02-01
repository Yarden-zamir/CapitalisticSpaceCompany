import scripts.settings;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.recipes.ICraftingRecipe;
#priority 90
static disabledItems as IItemStack[]= [];

function disableItem(item as IItemStack){
  //any operation on a disabled item happends here
  item.settings.toolTipForDisabled);
  disabledItems += item;
  if (!settings.showDisabled){
    mods.jei.JEI.removeAndHide(item);
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
