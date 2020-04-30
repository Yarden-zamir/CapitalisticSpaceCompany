#priority 99
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.formatting.IFormattedText;

static showDisabled as bool = true;
static toolTipForDisabled as IFormattedText = format.darkRed("disabled");
static showRestricteddItemsForSurvivalPlayers as bool = false; //items like creative tanks and upgrades and such
static showRestrictedItemsForCreateivePlayers as bool = true; //
static excavatorFailChance as double = 0.6667;
// static gamestageHideRules as = {
//
// };
//change to a dynamic loader system
static ingotsUnified as IItemStack[IOreDictEntry] =
{
  <ore:ingotSilver>: <thermalfoundation:material:130>,
  <ore:ingotLead>: <thermalfoundation:material:131>,
  <ore:ingotBronze>: <thermalfoundation:material:163>,
  <ore:ingotTin>: <thermalfoundation:material:129>,
  <ore:ingotCopper>: <immersiveengineering:metal>,
  <ore:ingotAluminum>: <thermalfoundation:material:132>,
  <ore:ingotNickel>: <thermalfoundation:material:133>,
  <ore:ingotPlatinum>: <thermalfoundation:material:134>,
  <ore:ingotIridium>: <thermalfoundation:material:135>,
  <ore:ingotMithril>: <thermalfoundation:material:136>,
  <ore:ingotSteel>: <immersiveengineering:metal:8>,
  <ore:ingotElectrum>: <thermalfoundation:material:161>,
  <ore:ingotInvar>: <thermalfoundation:material:162>,
  <ore:ingotConstantan>: <thermalfoundation:material:164>,
  <ore:ingotSignalum>: <thermalfoundation:material:165>,
  <ore:ingotLumium>: <thermalfoundation:material:166>,
  <ore:ingotEnderium>: <thermalfoundation:material:167>,
  <ore:ingotUranium>: <immersiveengineering:metal:5>
} ;
