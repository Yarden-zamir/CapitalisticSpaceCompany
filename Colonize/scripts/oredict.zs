import crafttweaker.oredict.IOreDictEntry;
import scripts.settings;
import scripts.lib;
#priority 80

//plates
var plateArr = [
  <ore:plateIron> , <ore:plateGold> , <ore:plateCopper> , <ore:plateAluminum> ,
  <ore:plateLead> , <ore:plateSilver> , <ore:plateNickel> , <ore:plateUranium> ,
  <ore:plateConstantan> , <ore:plateElectrum> , <ore:plateSteel> , <ore:plateTin> ,
  <ore:plateBronze> , <ore:plateInvar> , <ore:plateZinc> , <ore:plateEnderium> ,
  <ore:plateLumium> , <ore:plateSignalum> , <ore:plateMithril> , <ore:plateIridium> ,
  <ore:platePlatinum>
] as IOreDictEntry[];
<ore:plate>.add(plateArr);

// //gears
// var gearArr = [
//   <ore:gearIron> , <ore:gearGold> , <ore:gearCopper> , <ore:gearAluminum> ,
//   <ore:gearLead> , <ore:gearSilver> , <ore:gearNickel> , <ore:gearUranium> ,
//   <ore:gearConstantan> , <ore:gearElectrum> , <ore:gearSteel> , <ore:gearTin> ,
//   <ore:gearBronze> , <ore:gearInvar> , <ore:gearZinc> , <ore:gearEnderium> ,
//   <ore:gearLumium> , <ore:gearSignalum> , <ore:gearMithril> , <ore:gearIridium> ,
//   <ore:gearPlatinum>
// ] as IOreDictEntry[];
// lib.addOreDict(gearArr, <ore:gear>);
//
// //wire
// var wireArr = [
//   <ore:wireCopper> , <ore:wireElectrum> , <ore:wireAluminum>, <ore:wireSteel>, <ore:wireGold>
// ] as IOreDictEntry[];
// lib.addOreDict(wireArr, <ore:wire>);
