function init(e){ //start
	e.npc.getTimers().forceStart(0, 1, true); //start the tick counter
}
function interact(e){
	testSpawn(e);
}
function testSpawn(e){ //to test the drop
		tested=true;
    e.npc.setPosition(e.npc.getX(),e.npc.getY()+50,e.npc.getZ());
}
function shootToSky(e){ //to send to space

}
function timer(e){
  if (e.npc.getWorld().getBlock(e.npc.getX(),e.npc.getY()-1,e.npc.getZ()).getDisplayName()!="minecraft:air"){
		turnToChest(e);
  }else{
    e.npc.getWorld().spawnParticle("totem",parseFloat(e.npc.getX()),parseFloat(e.npc.getY()+4),parseFloat(e.npc.getZ()),0.6,0.6,0.6,0.8,20);
  }
}

function turnToChest(e){
	e.npc.getWorld().setBlock(e.npc.getX(),e.npc.getY(),e.npc.getZ(),"minecraft:chest",0);
	if (tested){
		e.npc.despawn();
	}
}
var tested = false;
