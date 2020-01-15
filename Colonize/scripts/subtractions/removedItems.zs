import scripts.settings;
import scripts.lib;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import mods.immersiveengineering.Blueprint;

#priority 80
lib.disableItems([
]);


lib.disableItems([
  <modularmachinery:blockcasing:4>,
  <modularmachinery:blockinputbus:1>,
  <modularmachinery:blockinputbus:2>,
  <modularmachinery:blockinputbus:4>,
  <modularmachinery:blockinputbus:5>,
  <modularmachinery:blockinputbus:6>,
  <modularmachinery:blockoutputbus:1>,
  <modularmachinery:blockoutputbus:2>,
  <modularmachinery:blockoutputbus:4>,
  <modularmachinery:blockoutputbus:5>,
  <modularmachinery:blockoutputbus:6>,
  <modularmachinery:blockfluidinputhatch>,
  <modularmachinery:blockfluidinputhatch:1>,
  <modularmachinery:blockfluidinputhatch:4>,
  <modularmachinery:blockfluidinputhatch:5>,
  <modularmachinery:blockfluidinputhatch:6>,
  <modularmachinery:blockfluidinputhatch:7>,
  <modularmachinery:blockfluidoutputhatch>,
  <modularmachinery:blockfluidoutputhatch:1>,
  <modularmachinery:blockfluidoutputhatch:4>,
  <modularmachinery:blockfluidoutputhatch:5>,
  <modularmachinery:blockfluidoutputhatch:6>,
  <modularmachinery:blockfluidoutputhatch:7>,
  <modularmachinery:blockenergyinputhatch>,
  <modularmachinery:blockenergyinputhatch:1>,
  <modularmachinery:blockenergyinputhatch:4>,
  <modularmachinery:blockenergyinputhatch:5>,
  <modularmachinery:blockenergyinputhatch:6>,
  <modularmachinery:blockenergyinputhatch:7>,
  <modularmachinery:blockenergyoutputhatch>,
  <modularmachinery:blockenergyoutputhatch:1>,
  <modularmachinery:blockenergyoutputhatch:4>,
  <modularmachinery:blockenergyoutputhatch:5>,
  <modularmachinery:blockenergyoutputhatch:6>,
  <modularmachinery:blockenergyoutputhatch:7>,

]);
lib.disableItems([
  <magneticraft:fabricator>,
  <magneticraft:iron_pipe> 
]);
lib.disableItems([
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
  <factorytech:scaffold>
]);

lib.disableItems([
  <industrialrenewal:barrel_item>,
  <industrialrenewal:conveyor_bulk>
]);


//IE
Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({bullet: "silver"}));
lib.disableItems([
  <immersiveengineering:bullet:2>.withTag({bullet: "silver"})
]);
