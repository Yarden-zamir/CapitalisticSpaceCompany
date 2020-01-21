import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;
import mods.immersiveengineering.MineralMix;
import mods.immersiveengineering.Excavator;

#priority 70

//
static typicalProcessingTime as int = 10;
//
function addOreByMineral(inputMineral as String){ //TODO compleate this, would be cool
  var mineral = Excavator.getMineral(inputMineral);

}
function addOre(ore as IItemStack, inputMineral as String){ //even more simple version
  addOreWithTime(ore, inputMineral, typicalProcessingTime);
}
function addOreWithTime(ore as IItemStack, inputMineral as String,time as int){ // simple version
  addOreAdv([<minecraft:dirt>%1,<factorytech:mined_ore>%0.2,ore%0.6], [ore%0.2,<minecraft:coal>%0.025], inputMineral, time);
}
function addOreAdv(outputItems as WeightedItemStack[], inputItems as WeightedItemStack[], inputMineral as string, time as int){
  var machineRegName = "modular_crude_mineral_drill";
  var r = mods.modularmachinery.RecipeBuilder.newBuilder(
    machineRegName+"_"+outputItems[0].stack.name+"_w_"+inputMineral, machineRegName, time
  );

  //mineral
  r.addMineralInput(inputMineral,1);
  //adding inputs
  for input in inputItems{
    r.addItemInput(input.stack);
    r.setChance(input.chance);
  }
  //adding output
  for output in outputItems{
    r.addItemOutput(output.stack);
    r.setChance(output.chance);
  }

  //build the recipe
  r.build();
}
