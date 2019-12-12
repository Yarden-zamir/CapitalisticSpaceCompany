var landed = true;
var counter = 0;
var counterMax = 5;
var eaten = false;
var fly = false;
function init(e){
  e.npc.setPosition(e.npc.getX(),256,e.npc.getZ());
  e.npc.getTimers().forceStart(0, 1, true); //start the tick counter
  landed = false;
}
function interact(e){
  e.npc.getWorld().broadcast("Potato");
  var x = parseFloat(e.npc.getX())+0.5;
  var y = parseFloat(e.npc.getY())+0.5;
  var z = parseFloat(e.npc.getZ())+0.5;
  var speed = 10
  e.npc.setMotionY(5);
}
function timer(e){

  if (!landed){
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
          e.npc.setMotionY(5);
          fly= true;
        }
      }else{
        e.npc.getWorld().broadcast(e.npc.getY());
        e.npc.getWorld().spawnParticle("totem",parseFloat(e.npc.getX()),parseFloat(e.npc.getY()+4),parseFloat(e.npc.getZ()),0.6,0.6,0.6,0.8,20);
      }
    }
  }

}

function eatInv(e){
    e.npc.getWorld().setBlock(e.npc.getX(),e.npc.getY()-0.4,e.npc.getZ(),"minecraft:air",0);
  }
