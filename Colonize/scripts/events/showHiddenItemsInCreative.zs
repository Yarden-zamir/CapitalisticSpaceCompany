import crafttweaker.events.IEventManager;
import scripts.settings;
import scripts.lib;
import mods.jei.JEI;
import crafttweaker.event.PlayerInteractEvent;
//Base Event
import crafttweaker.event.PlayerInteractEvent as itemEvent;
import crafttweaker.item.IItemStack;

mods.ItemStages.addItemStage("good", <minecraft:stone>);
mods.ItemStages.addItemStage("woolz", <minecraft:wool:*>);
static docItem as IItemStack[] = [
  <minecraft:stick>
];
events.onPlayerLoggedIn(function(event) {
//event instanceof Object -> No way of accessing it, so better cast!
print("SOMEONE HAS LOGGED IN!!!");

});
events.onPlayerInteract(function(event as itemEvent){
  print("An item has been used");
  if (docItem has event.player.currentItem){
    print("The stick has been used");
  }
  if (true){
    print("The stick has been used (not really)");
    if (event.player.hasGameStage("woolz")){
      event.player.removeGameStage("woolz");
      print("The stick has been removed");
    }else{
      event.player.addGameStage("woolz");
    }
  }
});
