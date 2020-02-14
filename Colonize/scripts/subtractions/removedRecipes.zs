import scripts.settings;
import scripts.lib;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.immersiveengineering.Blueprint;
import mods.factorytech.rivergrate;
#priority 10
//recipes to remove, usually when you want to change the recipe

//maybe should move into seperate files?


//immersiveengineering
recipes.remove(<immersiveengineering:metal_device1:7>,false);
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
//scroll groups
recipes.remove(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:extract"}));
recipes.remove(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:uncontrolled"}));
recipes.remove(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:dropper"}));
recipes.remove(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:vertical"}));
recipes.remove(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:splitter"}));
recipes.remove(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:droppercovered"}));
recipes.remove(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:verticalcovered"}));
recipes.remove(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:extractcovered"}));
recipes.remove(<immersiveengineering:connector:3>);
recipes.remove(<immersiveengineering:connector:5>);
recipes.remove(<rftools:shape_card:1>);
recipes.remove(<rftools:shape_card:3>);
recipes.remove(<rftools:shape_card:4>);
recipes.remove(<rftools:shape_card:5>);
recipes.remove(<rftools:shape_card:6>);
recipes.remove(<rftools:shape_card:7>);
recipes.remove(<rftools:shape_card:9>);
recipes.remove(<rftools:shape_card:10>);
recipes.remove(<rftoolscontrol:interaction_module>);
recipes.remove(<rftoolscontrol:console_module>);
recipes.remove(<rftoolscontrol:vectorart_module>);
recipes.remove(<rftools:counterplus_module>);
recipes.remove(<rftools:redstone_module>);
recipes.remove(<rftools:elevator_button_module>);
recipes.remove(<rftools:button_module>);
recipes.remove(<rftools:computer_module>);
recipes.remove(<rftools:machineinformation_module>);
recipes.remove(<rftools:fluidplus_module>);
recipes.remove(<rftools:fluid_module>);
recipes.remove(<rftools:clock_module>);
recipes.remove(<rftools:energyplus_module>);
recipes.remove(<rftools:inventoryplus_module>);
recipes.remove(<immersiveengineering:blueprint>);
//removed electrode crafting
Blueprint.removeRecipe(<immersiveengineering:graphite_electrode>);

//vanilla
recipes.remove(<minecraft:fire_charge>, false);

//furnace
//furnace.remove(<factorytech:ingot>);

//factorytech
rivergrate.removeRecipe(<factorytech:ore_dust:17>);
rivergrate.removeRecipe(<factorytech:ore_dust:16>);
rivergrate.removeRecipe(<factorytech:ore_dust:15>);

recipes.remove(<magneticraft:inserter>,false);
recipes.remove(<magneticraft:multiblock_parts>,false);

//
recipes.removeByRecipeName("thermaldynamics:duct_64");
recipes.removeByRecipeName("railcraft:rail#2$2");
recipes.removeByRecipeName("railcraft:cart_bronze");
recipes.removeByRecipeName("thermaldynamics:duct_64");

//
recipes.remove(<industrialrenewal:fence_big_corner>);
recipes.removeShapeless(<industrialrenewal:fence_big_column>, [<industrialrenewal:fence_big_corner>]);

//
recipes.remove(<magneticraft:big_electric_furnace>);
recipes.remove(<magneticraft:steam_turbine>);
recipes.remove(<magneticraft:big_steam_boiler>);
recipes.remove(<magneticraft:big_combustion_chamber>);
recipes.remove(<magneticraft:refinery>);
recipes.remove(<magneticraft:oil_heater>);
recipes.remove(<magneticraft:hydraulic_press>);
recipes.remove(<magneticraft:solar_panel>);
recipes.remove(<magneticraft:shelving_unit>);
recipes.remove(<magneticraft:steam_engine>);
recipes.remove(<magneticraft:grinder>);
recipes.remove(<magneticraft:sieve>);
recipes.remove(<magneticraft:solar_tower>);
recipes.remove(<magneticraft:solar_mirror>);
recipes.remove(<magneticraft:container>);
recipes.remove(<magneticraft:pumpjack>);

//

recipes.remove(<modularrouters:blank_module>);
