import scripts.settings;
import scripts.lib;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import mods.immersiveengineering.Blueprint;
//should seperate into different files
#priority 80
lib.disableItems([
]);
lib.disableItems([//tcomplement
  <tcomplement:materials>
]);
lib.disableItems([
  <thermalfoundation:ore:*>
  ,<thermalfoundation:storage:*>
  ,<thermalfoundation:glass:1>
  ,<thermalfoundation:glass:2>
  ,<thermalfoundation:glass:4>
  ,<thermalfoundation:glass:5> * 2
  ,<thermalfoundation:glass:6> * 2
  ,<thermalfoundation:glass:7>
  ,<thermalfoundation:glass:8>
  ,<thermalfoundation:glass_alloy:1>
  ,<thermalfoundation:glass_alloy:2>
  ,<thermalfoundation:glass_alloy:3>
  ,<thermalfoundation:glass_alloy:4>
  ,<thermalfoundation:glass_alloy:5>
  ,<thermalfoundation:glass_alloy:6>
  ,<thermalfoundation:glass_alloy:7>
  ,<thermalfoundation:rockwool:*>
  ,<thermalfoundation:coin:*>
  ,<thermalfoundation:upgrade:*>
  ,<thermalfoundation:security>
  ,<thermalfoundation:diagram_redprint>
  ,<thermalfoundation:bait:*>
  ,<thermalfoundation:dye:*>
  ,<thermalfoundation:material:354>
  ,<thermalfoundation:material:802>
  ,<thermalfoundation:material:1026>
  ,<thermalfoundation:material:1027>
  ,<thermalfoundation:material:1028>
  ,<thermalfoundation:material:2048>
  ,<thermalfoundation:material:2049>
  ,<thermalfoundation:material:2050>
  ,<thermalfoundation:material:2051>
  ,<thermalfoundation:material:2052>
  ,<thermalfoundation:material:2053>
  ,<thermalfoundation:material:99>
  ,<thermalfoundation:material:163>
  ,<thermalfoundation:material:227>
  ,<thermalfoundation:material:291>
  ,<thermalfoundation:material:355>
  ,<forge:bucketfilled>.withTag({FluidName: "bronze", Amount: 1000})
  ,<thermalfoundation:storage_alloy:*>
  ,<thermalfoundation:material:165>
  ,<thermalfoundation:material:229>
  ,<forge:bucketfilled>.withTag({FluidName: "signalum", Amount: 1000})
  ,<thermalfoundation:material:101>
  ,<thermalfoundation:material:357>
  ,<thermalfoundation:material:293>
  ,<openblocks:tank>.withTag({tank: {FluidName: "signalum", Amount: 16000}})
  ,<openblocks:tank>.withTag({tank: {FluidName: "bronze", Amount: 16000}})
]);
lib.disableItems([
  <thermaldynamics:duct_16:6>
  ,<thermaldynamics:duct_16:7>
  ,<thermaldynamics:retriever:3>
  ,<thermaldynamics:filter:3>
  ,<thermaldynamics:servo:3>
]);
lib.disableItems([//i'll later seperate
  <randomthings:ingredient:3>
  ,<randomthings:spectresword>
  ,<randomthings:spectrepickaxe>
  ,<randomthings:spectreaxe>
  ,<randomthings:spectreshovel>
  ,<randomthings:spectrekey>
  ,<randomthings:enderbridge>
  ,<randomthings:prismarineenderbridge>
  ,<randomthings:enderanchor>
  ,<randomthings:spectreblock>
  ,<pneumaticcraft:omnidirectional_hopper> //maybe
  ,<randomthings:plate_redirector>
  ,<randomthings:plate_filteredredirector>
  ,<randomthings:plate_redstone>
  ,<randomthings:timeinabottle>.withTag({timeData: {storedTime: 2600}})
  ,<randomthings:timeinabottle>
  ,<randomthings:spectreanchor>
  ,<randomthings:plate_accelerator>
  ,<randomthings:plate_accelerator_directional>
  ,<randomthings:plate_bouncy>
  ,<randomthings:plate_collection>
  ,<randomthings:diviningrod:*>
  ,<randomthings:spectrecharger:*>
  ,<randomthings:spectrecoil_redstone>
  ,<randomthings:spectrecoil_genesis>
  ,<randomthings:spectrecoil_normal>
  ,<randomthings:spectrecoil_ender>
  ,<randomthings:spectrecoil_number>
  ,<randomthings:eclipsedclock>
  ,<randomthings:plate_corrector>
  ,<randomthings:plate_processing>
  ,<randomthings:ingredient:10>
  ,<randomthings:ingredient:2>
  ,<randomthings:ingredient:1>
  ,<randomthings:ingredient:8>
  ,<randomthings:ingredient:9>
  ,<randomthings:pitcherplant>
  ,<randomthings:peacecandle>
  ,<randomthings:spectreenergyinjector>
  ,<randomthings:spectrelens>
  ,<randomthings:inventoryrerouter>
  ,<randomthings:slimecube>
  ,<randomthings:ingredient:12>
  ,<randomthings:lotusseeds>
  ,<randomthings:ingredient:11>
  ,<randomthings:plate_extraction>
]);
// lib.treeDisableItems([
// ]);
//
// lib.treeDisableItems([
//   <randomthings:ingredient:3>
// ]);
// lib.treeDisableItems([
//   <thermalfoundation:material:163>,
//   <thermalfoundation:material:165>
// ]);
lib.disableItems([
  <modularmachinery:blockcasing:4>
  ,<modularmachinery:blockinputbus:2>
  ,<modularmachinery:blockinputbus:4>
  ,<modularmachinery:blockinputbus:5>
  ,<modularmachinery:blockinputbus:6>
  ,<modularmachinery:blockoutputbus:2>
  ,<modularmachinery:blockoutputbus:4>
  ,<modularmachinery:blockoutputbus:5>
  ,<modularmachinery:blockoutputbus:6>
  ,<modularmachinery:blockfluidinputhatch:1>
  ,<modularmachinery:blockfluidinputhatch:0>
  ,<modularmachinery:blockfluidinputhatch:3>
  ,<modularmachinery:blockfluidinputhatch:4>
  ,<modularmachinery:blockfluidinputhatch:5>
  ,<modularmachinery:blockfluidinputhatch:6>
  ,<modularmachinery:blockfluidinputhatch:7>
  ,<modularmachinery:blockfluidoutputhatch:1>
  ,<modularmachinery:blockfluidoutputhatch:0>
  ,<modularmachinery:blockfluidoutputhatch:3>
  ,<modularmachinery:blockfluidoutputhatch:4>
  ,<modularmachinery:blockfluidoutputhatch:5>
  ,<modularmachinery:blockfluidoutputhatch:6>
  ,<modularmachinery:blockfluidoutputhatch:7>
  ,<modularmachinery:blockenergyinputhatch>
  ,<modularmachinery:blockenergyinputhatch:1>
  ,<modularmachinery:blockenergyinputhatch:3>
  ,<modularmachinery:blockenergyinputhatch:4>
  ,<modularmachinery:blockenergyinputhatch:5>
  ,<modularmachinery:blockenergyinputhatch:6>
  ,<modularmachinery:blockenergyinputhatch:7>
  ,<modularmachinery:blockenergyoutputhatch>
  ,<modularmachinery:blockenergyoutputhatch:1>
  ,<modularmachinery:blockenergyoutputhatch:4>
  ,<modularmachinery:blockenergyoutputhatch:5>
  ,<modularmachinery:blockenergyoutputhatch:6>
  ,<modularmachinery:blockenergyoutputhatch:7>
  ,<modularmachinery:blockinputbus:1>
  ,<modularmachinery:blockinputbus:3>
  ,<modularmachinery:blockoutputbus:1>
  ,<modularmachinery:blockoutputbus:3>
  ,<modularmachinery:blockenergyoutputhatch:3>
]);
lib.disableItems([
  <factorytech:fluidpuller>,
  <factorytech:compacthopper>,
  <factorytech:stackmover>,
  <factorytech:filtermover>,
  <factorytech:bulkmover>,
  <factorytech:autopuller>,
  <factorytech:itempusher>,
  <factorytech:buffercrate>,
  <factorytech:conveyor>,
  <factorytech:hatch>,
  <factorytech:realelevator>,
  <factorytech:pulser>,
  <factorytech:pulsecounter>,
  <factorytech:scaffold>,
  <factorytech:ingot>,
  <factorytech:pipe>,
  <factorytech:valve>,
  <factorytech:itemredis>,
  <factorytech:tankblock>,
  <factorytech:ore:*>,
  <essentials:fertile_soil:*>,
  <factorytech:wrench>, //wrenches from other mods (base, pneumaticcraft) work as well
]);

lib.disableItems([
  <industrialrenewal:barrel_item>,
  <industrialrenewal:conveyor_bulk>
]);

//
lib.disableItems([
  <rftools:machine_base>
  ,<rftools:machine_frame>
  ,<rftools:inventory_module> //we'll keep only the + modules
  ,<rftools:energy_module>
  ,<rftools:fluid_module>
  ,<rftools:counter_module:*>
  ,<rftools:storage_module_tablet>
  ,<rftools:storage_control_module>
  ,<rftools:remote_storage>
  ,<rftools:modular_storage>
  ,<rftools:dump_module>
  ,<rftools:item_filter>
]);
lib.disableItems([
  <effortlessbuilding:reach_upgrade1>
  ,<effortlessbuilding:reach_upgrade2>
  ,<effortlessbuilding:reach_upgrade3>
]);
//IE
Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({bullet: "silver"}));
lib.disableItems([
  <immersiveengineering:bullet:2>.withTag({bullet: "silver"})
  //remove lead
  ,<immersiveengineering:metal:2>
  //remove lv
  ,<immersiveengineering:wirecoil:6>
  ,<immersiveengineering:wirecoil>
  ,<immersiveengineering:connector>
  ,<immersiveengineering:connector:1>
  //remove capacitors
  ,<immersiveengineering:metal_device0>
  ,<immersiveengineering:metal_device0:1>
  ,<immersiveengineering:metal_device0:2>
  ,<immersiveengineering:powerpack>

]);

//
lib.disableItems([
  <modularrouters:module:13>.withTag({ModuleFilter: [], Flags: 13 as byte})
  ,<modularrouters:module:1>.withTag({Speed: 0.0 as float, ModuleFilter: [], Pitch: 0.0 as float, Flags: 13 as byte, Yaw: 0.0 as float})
  ,<modularrouters:module:2>.withTag({ModuleFilter: [], Flags: 13 as byte})
  ,<modularrouters:module:5>.withTag({ModuleFilter: [], Flags: 13 as byte})
  ,<modularrouters:module:6>.withTag({ModuleFilter: [], Flags: 13 as byte})
  ,<modularrouters:module:7>.withTag({ModuleFilter: [], Flags: 13 as byte})
  ,<modularrouters:module:8>.withTag({ModuleFilter: [], Flags: 13 as byte})
  ,<modularrouters:module:9>.withTag({ModuleFilter: [], Flags: 13 as byte})
  ,<modularrouters:module:12>.withTag({ModuleFilter: [], StrongSignal: 0 as byte, SignalLevel: 15, Flags: 13 as byte})
  ,<modularrouters:module:17>.withTag({ModuleFilter: [], Flags: 13 as byte})
  ,<modularrouters:module:14>.withTag({FluidDir: 0 as byte, ModuleFilter: [], Flags: 13 as byte, MaxTransfer: 1000})
  ,<modularrouters:upgrade:5>
  ,<modularrouters:upgrade>
  ,<modularrouters:augment>
  ,<modularrouters:augment:1>
  ,<modularrouters:augment:6>
  ,<modularrouters:augment:7>
  ,<omlib:fake_sword>
  ,<omlib:network_cable>
  ,<modularrouters:module>.withTag({ModuleFilter: [], Flags: 13 as byte})
]);
//
lib.disableItems([
  <compactmachines3:machine:0>
  ,<compactmachines3:machine:1>
  ,<compactmachines3:machine:2>
  ,<compactmachines3:machine:3>
  ,<compactmachines3:machine:4>
]);
