#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
import mods.contenttweaker.Commands;
import mods.contenttweaker.AxisAlignedBB;

for i in 0 .. 15 {
  val n ="comp_"+i;
  var compIcon = VanillaFactory.createItem(n);
  compIcon.maxStackSize = 1;
  compIcon.register();
}
