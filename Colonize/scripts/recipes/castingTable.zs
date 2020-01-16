import mods.tconstruct.Casting;

//Casting.addTableRecipe(IItemStack output, IIngredient cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast, @Optional int time);
//note: added more metals than there are in use in case you want to use this script elseware

Casting.addTableRecipe(<immersiveengineering:mold>, <ore:plate>, <liquid:steel>, 288, true);
Casting.addTableRecipe(<immersiveengineering:mold:1>, <ore:gear>, <liquid:steel>, 288, true);
Casting.addTableRecipe(<immersiveengineering:mold:2>, <ore:stickWood>|<ore:partToolRod>|<ore:stickSteel>|<ore:stickIron>|<ore:sticTreatedkWood>, <liquid:steel>, 288, true); //consider adding a stick ordict
Casting.addTableRecipe(<immersiveengineering:mold:3>, <immersiveengineering:bullet>, <liquid:steel>, 288, true);
Casting.addTableRecipe(<immersiveengineering:mold:4>, <ore:wire>, <liquid:steel>, 288, true);
Casting.addTableRecipe(<immersiveengineering:mold:5>, <minecraft:iron_trapdoor>|<ore:trapdoorWood>, <liquid:steel>, 288, true);
Casting.addTableRecipe(<immersiveengineering:mold:6>, <ore:workbench>, <liquid:steel>, 288, true);
Casting.addTableRecipe(<immersiveengineering:mold:7>, <quark:grate>, <liquid:steel>, 288, true);
