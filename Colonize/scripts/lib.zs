import scripts.settings;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
#priority 90
/*
* item - the item you want to disable
*/
function disableItem(item as IItemStack){
  //any operation on a disabled item happends here
  item.addTooltip(format.darkRed("Disabled"));
  if (!settings.showDisabled){
    mods.jei.JEI.removeAndHide(item);
  }
}

/*
* items - the items you want to disable, they will be disabled one by one
* using the function scripts.functions.disableItem(item as IItemStack)
* if you want them to undergo additional operations, add them to that function
*/
function disableItems(items as IItemStack[]){
  for item in items {
    disableItem(item);
  }
}

function treeDisableItem(item as IItemStack){
  for rec in recipes.all{
    for i in rec.ingredients1D{
      if (!isNull(i)){
        if (i.matches(item)){
          disableItem(item);
          print("treeD "+item.name);
          treeDisableItem(rec.output);
          print("treeGrd");
        }
      }
    }
  }
}
function treeDisableItems(items as IItemStack[]){
  for item in items {
    treeDisableItem(item);
  }
}

// function compareStack(a as IIngredient, b as IIngredient) as bool{
//   var aUniqe = a.name+a.definition.id;
//   var bUniqe = b.name+b.definition.id;
//   return (aUniqe==bUniqe);
// }
