import scripts.settings;
import scripts.lib;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.immersiveengineering.Blueprint;
#priority 80
//recipes to remove, usually when you want to change the recipe



//immersiveengineering
Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({bullet: "armor_piercing"}));
//removing molds from blueprints to clean up blueprints (https://github.com/PandaBoy444/Colonize/issues/36)
Blueprint.removeRecipe(<immersiveengineering:mold>);
Blueprint.removeRecipe(<immersiveengineering:mold:1>);
Blueprint.removeRecipe(<immersiveengineering:mold:2>);
Blueprint.removeRecipe(<immersiveengineering:mold:3>);
Blueprint.removeRecipe(<immersiveengineering:mold:4>);
Blueprint.removeRecipe(<immersiveengineering:mold:5>);
Blueprint.removeRecipe(<immersiveengineering:mold:6>);
Blueprint.removeRecipe(<immersiveengineering:mold:7>);
//removed electrode crafting
Blueprint.removeRecipe(<immersiveengineering:graphite_electrode>);

//vanilla
recipes.remove(<minecraft:fire_charge>, false);
