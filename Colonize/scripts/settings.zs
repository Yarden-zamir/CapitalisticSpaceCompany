#priority 99
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.formatting.IFormattedText;

//Displays the disabled items in JEI if true for debuging
static showDisabled as bool = true;

//The tooltip added to disabled items
static toolTipForDisabled as IFormattedText = format.darkRed("disabled");

//Items like creative tanks and upgrades and such and their JEI rules
static showRestricteddItemsForSurvivalPlayers as bool = false;
static showRestrictedItemsForCreateivePlayers as bool = true;

// The chance the excavator would fail. This variable along with speed changes
// in the configs are meant to balance the excavator and the other miners in terms of efficiency and speed
static excavatorFailChance as double = 0.6667;

// static gamestageHideRules as = {
//
// };
