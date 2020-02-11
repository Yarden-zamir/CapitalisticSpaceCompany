import scripts.machineDef.modular_PEMFC;

var energyOut = 6553; // temp
modular_PEMFC.addRecipe(<liquid:water>*120, [<liquid:hydrogen>*80,<liquid:oxygen>*40], 1, energyOut);

// 80hydrogen = 6553fe
// 1hydrogen = 80
