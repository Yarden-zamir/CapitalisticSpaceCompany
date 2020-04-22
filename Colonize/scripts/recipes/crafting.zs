import scripts.lib;


//replace
recipes.replaceAllOccurences(<rftools:machine_frame>, <modularmachinery:blockcasing>);
recipes.replaceAllOccurences(<rftools:machine_base>, <ore:plate>);

//2x2
recipes.addShapeless(<modularmachinery:blockcasing>*4, [<ore:ingotCopper>,<minecraft:redstone>,<ore:ingotIron>,<ore:ingotIron>]);

//3x3
recipes.addShapeless(<minecraft:fire_charge>, [<ore:dustBlaze> ,<ore:gunpowder>,<ore:coal> | <ore:charcoal>]);
recipes.addShapeless(<minecraft:fire_charge>, [<ore:dustRedstone> *4 ,<ore:gunpowder>,<ore:coal> | <ore:charcoal>]);

recipes.addShaped(<rftools:redstone_transmitter_block>*8, [[<minecraft:redstone>, <minecraft:ender_pearl>, <minecraft:redstone>], [<minecraft:redstone_torch>, <ore:plate>, <minecraft:redstone_torch>], [<minecraft:redstone>, <minecraft:redstone_block>, <minecraft:redstone>]]);
//
recipes.addShaped(<railcraft:tie:1>, [[null, <minecraft:water_bucket> | <openblocks:tank>.withTag({tank: {FluidName: "water", Amount: 16000}}), null], [<minecraft:concrete:*>, <ore:stickSteel>, <minecraft:concrete:*>]]);
recipes.addShaped(<railcraft:frame> * 6, [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], [<ore:stickSteel>, null, <ore:stickSteel>], [<ore:stickSteel>, <ore:stickSteel>, <ore:stickSteel>]]);
recipes.addShaped(<railcraft:frame> * 6, [[<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>], [<ore:stickSteel>, null, <ore:stickSteel>], [<ore:stickSteel>, <ore:stickSteel>, <ore:stickSteel>]]);
recipes.addShaped(<railcraft:frame> * 6, [[<ore:plateBrass>, <ore:plateBrass>, <ore:plateBrass>], [<ore:stickSteel>, null, <ore:stickSteel>], [<ore:stickSteel>, <ore:stickSteel>, <ore:stickSteel>]]);
recipes.addShaped(<railcraft:frame> * 10, [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], [<ore:stickSteel>, null, <ore:stickSteel>], [<ore:stickSteel>, <ore:stickSteel>, <ore:stickSteel>]]);
recipes.addShaped(<immersiveengineering:metal_device1:7>, [[<ore:scaffoldingSteel>, <ore:fenceSteel>, <ore:scaffoldingSteel>],[<ore:scaffoldingSteel>, <ore:fenceSteel>, <ore:scaffoldingSteel>], [<ore:scaffoldingSteel>, <immersiveengineering:metal_decoration0:4>, <ore:scaffoldingSteel>]]);

recipes.addShapeless(<modularrouters:blank_module>,[
  <minecraft:dispenser>
  ,<minecraft:diamond_pickaxe>
  ,<immersiveengineering:metal>
  ,<minecraft:paper>
  ,<minecraft:paper>
  ,<minecraft:paper>
  ,<immersiveengineering:metal>
  ,<minecraft:dye:11>
  ,<immersiveengineering:metal>
]);
