import scripts.settings;
import scripts.lib;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.immersiveengineering.Blueprint;
#priority 80
//recipes to remove, usually when you want to change the recipe



//immersiveengineering
Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({bullet: "armor_piercing"}));

//vanilla
recipes.remove(<minecraft:fire_charge>, false);