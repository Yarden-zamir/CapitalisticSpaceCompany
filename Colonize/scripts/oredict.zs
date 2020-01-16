import scripts.settings;
import scripts.lib;
import crafttweaker.oredict.IOreDictEntry;
#priority 80

//plates
var plateArr as IOreDictEntry[] = [
  <ore:plateIron>,<ore:plateGold>,<ore:plateCopper>,
  <ore:plateAluminum>,<ore:plateLead>,<ore:plateSilver>,<ore:plateNickel>,
  <ore:plateUranium>,<ore:plateConstantan>,<ore:plateElectrum>,
  <ore:plateSteel>,<ore:plateTin>,<ore:plateBronze>,<ore:plateInvar>,
  <ore:plateZinc>,<ore:plateEnderium>,<ore:plateLumium>,<ore:plateSignalum>,
  <ore:plateMithril>,<ore:plateIridium>,<ore:platePlatinum>];
for ore in plateArr {<ore:plate>.addAll(ore);}

//gears
var gearArr as IOreDictEntry[] = [
  <ore:gearIron>,<ore:gearGold>,<ore:gearCopper>,<ore:gearAluminum>,
  <ore:gearLead>,<ore:gearSilver>,<ore:gearNickel>,<ore:gearUranium>,
  <ore:gearConstantan>,<ore:gearElectrum>,<ore:gearSteel>,<ore:gearTin>,
  <ore:gearBronze>,<ore:gearInvar>,<ore:gearZinc>,<ore:gearEnderium>,
  <ore:gearLumium>,<ore:gearSignalum>,<ore:gearMithril>,<ore:gearIridium>,
  <ore:gearPlatinum>];
for ore in gearArr {<ore:gear>.addAll(ore);}

//wire
var wireArr as IOreDictEntry[] = [
  <ore:wireCopper> , <ore:wireElectrum> , <ore:wireAluminum>, <ore:wireSteel>, <ore:wireGold>];
for ore in wireArr {<ore:wire>.addAll(ore);}
