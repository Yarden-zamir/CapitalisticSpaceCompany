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

var oxygen = VanillaFactory.createFluid("oxygen", Color.fromHex("c5dbf0"));
oxygen.gaseous=true;
oxygen.vaporize=true;
oxygen.register();

var hydrogen = VanillaFactory.createFluid("hydrogen", Color.fromHex("f2f3f4"));
hydrogen.gaseous=true;
hydrogen.vaporize=true;
hydrogen.register();
