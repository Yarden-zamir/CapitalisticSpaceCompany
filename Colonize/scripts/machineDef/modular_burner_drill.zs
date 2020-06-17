import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;
import mods.immersiveengineering.MineralMix;
import mods.immersiveengineering.Excavator;
import crafttweaker.liquid.ILiquidStack;

#priority 70

static machineRegName as string = "modular_burner_drill";
//
static min as int = 1;
static max as int = 1.0/0;
static ticksPerOp as int= 55;
function addSolidFuel(fuel as IItemStack){
  var r = RecipeBuilder.newBuilder(
    machineRegName+"_"+fuel.name+"_w_"+"Iron", machineRegName, 55
  );
  r.addItemInput(fuel);
  r.setChance(0.36);
  r.addItemOutput(<minecraft:iron_ore>);
  r.addMineralInput("Iron",-1);
  r.addOreRequirement(min,max);
  r.build();
}
// function addFluidFuel(fuel as ILiquidStack,burnChance as float){
//   var r = RecipeBuilder.newBuilder(
//     machineRegName+"_"+fuel.name+"_w_"+"Iron", machineRegName, 55
//   );
//   r.addFluidInput(fuel);
//   print(burnChance);
//   r.setChance(burnChance);
//   r.addItemOutput(<minecraft:iron_ore>);
//   r.addMineralInput("Iron",-1);
//   r.addOreRequirement(min,max);
//   r.build();
// }
