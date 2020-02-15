import mods.zenscroll.ZenScroll;
import mods.zenscroll.ScrollGroup;
import scripts.machineDef.modular_cycler as cycler;
import scripts.settings;
import scripts.lib;
import crafttweaker.item.IItemStack;

var tempArray as IItemStack[] = ScrollGroup.of(
  <immersiveengineering:treated_wood>
  ,<immersiveengineering:treated_wood:1>
  ,<immersiveengineering:treated_wood:2>
).items;
var lastItem as IItemStack= tempArray[tempArray.length]; //makes sure the it loops

for item in tempArray{
}
