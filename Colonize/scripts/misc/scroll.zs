import mods.zenscroll.ZenScroll;
import mods.zenscroll.ScrollGroup;
import scripts.machineDef.modular_cycler as cycler;
import scripts.settings;
import scripts.lib;
import crafttweaker.item.IItemStack;

var scrollGroups as ScrollGroup[];
scrollGroups = [
  ScrollGroup.of(
    <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"})
    ,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"})
    ,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:uncontrolled"})
    ,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:dropper"})
    ,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:vertical"})
    ,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:splitter"})
    ,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:extract"})
  )
  ,ScrollGroup.of(
    <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:covered"})
    ,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:droppercovered"})
    ,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:verticalcovered"})
    ,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:extractcovered"})
  )
  ,ScrollGroup.of(
    <immersiveengineering:connector:2>
    ,<immersiveengineering:connector:3>
  )
  ,ScrollGroup.of(
    <immersiveengineering:connector:4>
    ,<immersiveengineering:connector:5>
  )
  ,ScrollGroup.of(
    <rftools:shape_card>
    ,<rftools:shape_card:1>
  )
  ,ScrollGroup.of(
    <rftools:shape_card:2>
    ,<rftools:shape_card:3>
    ,<rftools:shape_card:4>
    ,<rftools:shape_card:5>
    ,<rftools:shape_card:6>
    ,<rftools:shape_card:7>
  )
  ,ScrollGroup.of(
    <rftools:shape_card:8>
    ,<rftools:shape_card:9>
    ,<rftools:shape_card:10>
  )
  ,ScrollGroup.of(
    <rftoolscontrol:variable_module>
    ,<rftoolscontrol:interaction_module>
    ,<rftoolscontrol:console_module>
    ,<rftoolscontrol:vectorart_module>
  )
  ,ScrollGroup.of(
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
  )
  ,ScrollGroup.of(
    <immersiveengineering:tool:3>
    ,<immersiveengineering:blueprint>.withTag({blueprint: "components"})
    ,<immersiveengineering:blueprint>.withTag({blueprint: "bullet"})
    ,<immersiveengineering:blueprint>.withTag({blueprint: "specialBullet"})
  )
  ,ScrollGroup.of(
    <industrialrenewal:catwalk_steel_pillar>
    ,<industrialrenewal:catwalk_column_steel>
  )
  ,ScrollGroup.of(
    <industrialrenewal:fence_big_column>
    ,<industrialrenewal:fence_big_corner>
  )
  ,ScrollGroup.of(
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
  )
  ,ScrollGroup.of(
    <magneticraft:guide_book>
    ,<magneticraft:big_electric_furnace>
    ,<magneticraft:steam_turbine>
    ,<magneticraft:big_steam_boiler>
    ,<magneticraft:big_combustion_chamber>
    ,<magneticraft:refinery>
    ,<magneticraft:oil_heater>
    ,<magneticraft:hydraulic_press>
    ,<magneticraft:solar_panel>
    ,<magneticraft:shelving_unit>
    ,<magneticraft:steam_engine>
    ,<magneticraft:grinder>
    ,<magneticraft:sieve>
    ,<magneticraft:solar_tower>
    ,<magneticraft:solar_mirror>
    ,<magneticraft:container>
    ,<magneticraft:pumpjack>
  )
  ,ScrollGroup.of(
      <botania:lightrelay:0>
      ,<botania:lightrelay:1>
      ,<botania:lightrelay:2>
      ,<botania:lightrelay:3>
  )
  ,ScrollGroup.of(
    <immersiveengineering:treated_wood>
    ,<immersiveengineering:treated_wood:1>
    ,<immersiveengineering:treated_wood:2>
  )
];

for scrollgroup in scrollGroups{
  ZenScroll.add(scrollgroup);
  var tempArray as IItemStack[] = scrollgroup.items;
  var lastItem as IItemStack= tempArray[tempArray.length]; //makes sure the it loops

  for item in tempArray{
    cycler.addRecipe(item,lastItem);
    lastItem=item;
  }
}
