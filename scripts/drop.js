function interact(e){
  e.npc.setPosition(e.npc.getX(),e.npc.getY()+50,e.npc.getZ());
}
function init(e){
  goToSky(e);
}
function goToSky(e){
  e.npc.getTimers().forceStart(0, 1, true);
}
function shootToSky(e){

}
function timer(e){
  if (e.npc.getWorld().getBlock(e.npc.getX(),e.npc.getY()-1,e.npc.getZ()).getDisplayName()!="minecraft:air"){
    e.npc.getWorld().setBlock(e.npc.getX(),e.npc.getY(),e.npc.getZ(),"minecraft:chest",0);
  }else{
    //e.npc.getWorld().spawnParticle("flame",parseFloat(e.npc.getX()),parseFloat(e.npc.getY()+1),parseFloat(e.npc.getZ()),0.1,0.6,0.1,0.1,20);
    e.npc.getWorld().spawnParticle("totem",parseFloat(e.npc.getX()),parseFloat(e.npc.getY()+4),parseFloat(e.npc.getZ()),0.6,0.6,0.6,0.8,20);
  }
}
