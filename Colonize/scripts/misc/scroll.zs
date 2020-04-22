import mods.zenscroll.ZenScroll;
import mods.zenscroll.ScrollGroup;
import scripts.machineDef.modular_cycler as cycler;
import scripts.settings;
import scripts.lib;
import crafttweaker.item.IItemStack;

var scrollGroups as IItemStack[][string];
scrollGroups = {
  "Conveyors":[
    <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"})
    ,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"})
    ,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:uncontrolled"})
    ,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:dropper"})
    ,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:vertical"})
    ,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:splitter"})
    ,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:extract"})
  ]
  ,"Covered Conveyors":[
    <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:covered"})
    ,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:droppercovered"})
    ,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:verticalcovered"})
    ,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:extractcovered"})
  ]
  ,"mv":[
    <immersiveengineering:connector:2>
    ,<immersiveengineering:connector:3>
  ]
  ,"hv":[
    <immersiveengineering:connector:4>
    ,<immersiveengineering:connector:5>
  ]
  ,"shape cards":[
    <rftools:shape_card>
    ,<rftools:shape_card:1>
  ]
  ,"more shape cards":[
    <rftools:shape_card:2>
    ,<rftools:shape_card:3>
    ,<rftools:shape_card:4>
    ,<rftools:shape_card:5>
    ,<rftools:shape_card:6>
    ,<rftools:shape_card:7>
  ]
  ,"even more shape cards":[
    <rftools:shape_card:8>
    ,<rftools:shape_card:9>
    ,<rftools:shape_card:10>
  ]
  ,"control cards":[
    <rftoolscontrol:variable_module>
    ,<rftoolscontrol:interaction_module>
    ,<rftoolscontrol:console_module>
    ,<rftoolscontrol:vectorart_module>
  ]
  ,"screen modules":[
    <rftools:text_module>
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
    ,<rftools:counterplus_module>
  ]
  ,"blueprints":[
    <immersiveengineering:tool:3>
    ,<immersiveengineering:blueprint>.withTag({blueprint: "components"})
    ,<immersiveengineering:blueprint>.withTag({blueprint: "bullet"})
    ,<immersiveengineering:blueprint>.withTag({blueprint: "specialBullet"})
  ]
  ,"catwalk":[
    <industrialrenewal:catwalk_steel_pillar>
    ,<industrialrenewal:catwalk_column_steel>
  ]
  ,"big fence":[
    <industrialrenewal:fence_big_column>
    ,<industrialrenewal:fence_big_corner>
  ]
  ,"projectors":[
    <immersivepetroleum:schematic>
    ,<immersivepetroleum:schematic>.withTag({multiblock: "IE:CokeOven"})
    ,<immersivepetroleum:schematic>.withTag({multiblock: "IE:AlloySmelter"})
    ,<immersivepetroleum:schematic>.withTag({multiblock: "IE:BlastFurnace"})
    ,<immersivepetroleum:schematic>.withTag({multiblock: "IE:BlastFurnaceAdvanced"})
    ,<immersivepetroleum:schematic>.withTag({multiblock: "IE:MetalPress"})
    ,<immersivepetroleum:schematic>.withTag({multiblock: "IE:Crusher"})
    ,<immersivepetroleum:schematic>.withTag({multiblock: "IE:SheetmetalTank"})
    ,<immersivepetroleum:schematic>.withTag({multiblock: "IE:Silo"})
    ,<immersivepetroleum:schematic>.withTag({multiblock: "IE:Assembler"})
    ,<immersivepetroleum:schematic>.withTag({multiblock: "IE:AutoWorkbench"})
    ,<immersivepetroleum:schematic>.withTag({multiblock: "IE:BottlingMachine"})
    ,<immersivepetroleum:schematic>.withTag({multiblock: "IE:Squeezer"})
    ,<immersivepetroleum:schematic>.withTag({multiblock: "IE:Fermenter"})
    ,<immersivepetroleum:schematic>.withTag({multiblock: "IE:Refinery"})
    ,<immersivepetroleum:schematic>.withTag({multiblock: "IE:DieselGenerator"})
    ,<immersivepetroleum:schematic>.withTag({multiblock: "IE:ArcFurnace"})
    ,<immersivepetroleum:schematic>.withTag({multiblock: "IE:Lightningrod"})
    ,<immersivepetroleum:schematic>.withTag({multiblock: "IE:Mixer"})
    ,<immersivepetroleum:schematic>.withTag({multiblock: "IP:DistillationTower"})
    ,<immersivepetroleum:schematic>.withTag({multiblock: "IP:Pumpjack"})
    ,<immersivepetroleum:schematic>.withTag({multiblock: "IE:ExcavatorDemo"})
  ]
  ,"Luminizers":[
      <botania:lightrelay:0>
      ,<botania:lightrelay:1>
      ,<botania:lightrelay:2>
      ,<botania:lightrelay:3>
  ]
  ,"Treated wood types":[
    <immersiveengineering:treated_wood>
    ,<immersiveengineering:treated_wood:1>
    ,<immersiveengineering:treated_wood:2>
  ]
  ,"Wireless redstone" :[
  <rftools:redstone_transmitter_block>
  ,<rftools:redstone_receiver_block>
  ]
};

for name, scrollgroup in scrollGroups{
  ZenScroll.add(scrollgroup);
  var lastItem as IItemStack= scrollgroup[scrollgroup.length - 1]; //makes sure the it loops

  for item in scrollgroup{
    cycler.addRecipe(item,lastItem);
    lastItem=item;
  }
}
