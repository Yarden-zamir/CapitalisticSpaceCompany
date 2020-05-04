import scripts.settings;
import scripts.lib;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.immersiveengineering.Blueprint;
import mods.factorytech.rivergrate;
#priority 10
//recipes to remove, usually when you want to change the recipe
lib.removeRecipeBulk([//[modname]

]);
lib.removeRecipeBulk([//IE
  <immersiveengineering:metal_device1:7>
  ,<immersiveengineering:blueprint>
  //removed electrode crafting
  ,<immersiveengineering:graphite_electrode>
  //scroll groups
  ,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:extract"})
  ,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:uncontrolled"})
  ,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:dropper"})
  ,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:vertical"})
  ,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:splitter"})
  ,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:droppercovered"})
  ,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:verticalcovered"})
  ,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:extractcovered"})
  ,<immersiveengineering:connector:3>
  ,<immersiveengineering:connector:5>

]);
lib.removeRecipeBulk([//rftools
  //scroll groups
  <rftools:shape_card:1>
  ,<rftools:shape_card:3>
  ,<rftools:shape_card:4>
  ,<rftools:shape_card:5>
  ,<rftools:shape_card:6>
  ,<rftools:shape_card:7>
  ,<rftools:shape_card:9>
  ,<rftools:shape_card:10>
  ,<rftoolscontrol:interaction_module>
  ,<rftoolscontrol:console_module>
  ,<rftoolscontrol:vectorart_module>
  ,<rftools:counterplus_module>
  ,<rftools:redstone_module>
  ,<rftools:elevator_button_module>
  ,<rftools:button_module>
  ,<rftools:computer_module>
  ,<rftools:machineinformation_module>
  ,<rftools:fluidplus_module>
  ,<rftools:fluid_module>
  ,<rftools:clock_module>
  ,<rftools:energyplus_module>
  ,<rftools:inventoryplus_module>
  ,<rftools:redstone_transmitter_block>
  ,<rftools:redstone_receiver_block>
]);
lib.removeRecipeBulk([//vanilla
  <minecraft:fire_charge>
]);
lib.removeRecipeBulk([//IR
  <industrialrenewal:fence_big_corner>
  ,<industrialrenewal:fence_big_column> //need to add recipe to that one
]);
lib.removeRecipeBulk([//IR
  <modularrouters:blank_module>
]);
lib.removeRecipeBulk([//[modname]
  <botania:lightrelay:1>
  ,<botania:lightrelay:2>
  ,<botania:lightrelay:3>
]);
//

//shapeless ones
recipes.removeShapeless(<immersiveengineering:treated_wood:0>, [<immersiveengineering:treated_wood:2>]);
recipes.removeShapeless(<immersiveengineering:treated_wood:1>, [<immersiveengineering:treated_wood:0>]);
recipes.removeShapeless(<immersiveengineering:treated_wood:2>, [<immersiveengineering:treated_wood:1>]);
//blueprint
lib.removeFromBlueprintBulk([//immersiveengineering
    <immersiveengineering:bullet:2>.withTag({bullet: "armor_piercing"})
    //removing molds from blueprints to clean up blueprints (https://github.com/PandaBoy444/Colonize/issues/36)
    ,<immersiveengineering:mold>
    ,<immersiveengineering:mold:1>
    ,<immersiveengineering:mold:2>
    ,<immersiveengineering:mold:2>
    ,<immersiveengineering:mold:3>
    ,<immersiveengineering:mold:4>
    ,<immersiveengineering:mold:5>
    ,<immersiveengineering:mold:6>
    ,<immersiveengineering:mold:7>
]);
//rivergrate
rivergrate.removeRecipe(<factorytech:ore_dust:17>);
rivergrate.removeRecipe(<factorytech:ore_dust:16>);
rivergrate.removeRecipe(<factorytech:ore_dust:15>);


// special ones
recipes.removeByRecipeName("thermaldynamics:duct_64");
recipes.removeByRecipeName("railcraft:rail#2$2");
recipes.removeByRecipeName("railcraft:cart_bronze");
recipes.removeByRecipeName("thermaldynamics:duct_64");

//

///
