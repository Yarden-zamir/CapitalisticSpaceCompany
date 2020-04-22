import scripts.lib;

lib.rename(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:uncontrolled"}), "Conveyor Belt (ignores redstone)");
//<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:uncontrolled"}) to convayor belt (ignores redstone)
lib.renameBulk(
    {
      <charm:barrel>:"Oak Barrel-Chest",
      <charm:barrel:1>:"Spruce Barrel-Chest",
      <charm:barrel:2>:"Birch Barrel-Chest",
      <charm:barrel:3>:"Jungle Barrel-Chest",
      <charm:barrel:4>:"Acacia Barrel-Chest",
      <charm:barrel:5>:"Dark Oak Barrel-Chest",
    }
);

lib.renameBulk(
    {
      <immersiveengineering:wooden_device0:1>:"Wooden Fluid Barrel",
      <immersiveengineering:metal_device0:4>:"Metal Fluid Barrel",
    }
);

lib.renameBulk(
    {
      <railcraft:generic:5>:"Treated Wood Log",
    }
);

lib.renameBulk(
  {
    <modularmachinery:blockcasing>:"Machine Frame",
  }
);
