function interact(e){
  e.npc.setPosition(e.npc.getX(),e.npc.getY()+50,e.npc.getZ());
}
function init(e){
  e.npc.getTimers().forceStart(0, 1, true);

}
function timer(e){
  if (e.npc.getWorld().getBlock(e.npc.getX(),e.npc.getY()-1,e.npc.getZ()).getDisplayName()!="minecraft:air"){
    e.npc.getWorld().broadcast(e.npc.getWorld().getBlock(e.npc.getX(),e.npc.getY()-1,e.npc.getZ()).getDisplayName());
  }else{

  }
  e.npc.getWorld().spawnParticle("totem",parseFloat(e.npc.getX()),parseFloat(e.npc.getY()+1),parseFloat(e.npc.getZ()),0.1,0.6,0.1,0,20);
  e.npc.getWorld().spawnParticle("totem",parseFloat(e.npc.getX()),parseFloat(e.npc.getY()+2),parseFloat(e.npc.getZ()),0.1,0.6,0.1,0,20);


}
