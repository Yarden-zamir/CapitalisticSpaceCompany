var landed = true;
var counter = 0;
var counterMax = 8;
var eaten = false;
var fly = false;
var maxY = 0;
var baseSize = 5;
function init(e){
  e.npc.setPosition(e.npc.getX(),256,e.npc.getZ());

  e.npc.getTimers().forceStart(0, 1, true); //start the tick counter
  landed = false;
}
function timer(e){
  if (!landed){
    if (e.npc.getDisplay().getSize()!=baseSize){
      e.npc.getWorld().broadcast("why am I fat?");
      e.npc.getDisplay().setSize(baseSize);
    }
    switch (e.id){
      case 0:
          if (e.npc.getWorld().getBlock(e.npc.getX(),e.npc.getY()-0.4,e.npc.getZ()).getDisplayName()!="minecraft:air"){ //blocked
            //e.npc.getWorld().setBlock(e.npc.getX(),e.npc.getY()-0.4,e.npc.getZ(),"minecraft:air",0);
            landed = true;
            //e.npc.getTimers().forceStart(1, 0, true); //start the tick counter
          }else{
            e.npc.getWorld().spawnParticle("totem",parseFloat(e.npc.getX()),parseFloat(e.npc.getY()+4),parseFloat(e.npc.getZ()),0.6,0.6,0.6,0.8,20);
          }
      case 1:
        //eatInv(e)
    }
  }else{
    //e.npc.getWorld().broadcast(counter);
    counter++;
    if (!eaten){
      if (counter>=counterMax){
        e.npc.getWorld().broadcast(e.npc.getWorld().getBlock(e.npc.getX(),e.npc.getY()-0.4,e.npc.getZ()).getDisplayName());
        eatInv(e);
        eaten = true;
      }
    }else{
      if (!fly){
        if (counter>=counterMax*2){
          e.npc.setMotionY(2);
          fly= true;
        }
      }else{
        if (e.npc.getY()>maxY){

        }else{//lost momentum

        }
        e.npc.getWorld().spawnParticle("totem",parseFloat(e.npc.getX()),parseFloat(e.npc.getY()+4),parseFloat(e.npc.getZ()),0.6,0.6,0.6,0.8,20);
      }
    }
  }

}

function eatInv(e){
  
  e.npc.getDisplay().setSize(7);
  e.npc.getWorld().setBlock(e.npc.getX(),e.npc.getY()-0.4,e.npc.getZ(),"minecraft:air",0);
}
