//Create Menhirs by using Mending Moss on a block of Enderium surmounted by two blocks of Smooth Betweenstone
    events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
        if !(<thermalfoundation:storage_alloy:7>.asBlock() in event.block) {return;}
        var mainItem as IItemStack = event.player.mainHandHeldItem;
        if (!<tconstruct:materials:19>.matches(mainItem)) {return;}
        val pos1 = event.position;
        val pos2 = event.position.getOffset(IFacing.up(), 1);
        val pos3 = event.position.getOffset(IFacing.up(), 2);
        val world = event.player.world;
        if !(<thebetweenlands:smooth_betweenstone>.asBlock() in world.getBlock(pos2)) {return;}
        if !(<thebetweenlands:smooth_betweenstone>.asBlock() in world.getBlock(pos3)) {return;}
        world.setBlockState(<blockstate:minecraft:air>, pos1);
        world.setBlockState(<blockstate:minecraft:air>, pos2);
        world.setBlockState(<blockstate:minecraft:air>, pos3);
        if (<thebetweenlands:waystone>.asBlock().definition.canPlaceBlockAt(world, pos1)) {
            world.setBlockState(<blockstate:thebetweenlands:waystone:active=false,part=bottom>, pos1);
            world.setBlockState(<blockstate:thebetweenlands:waystone:active=false,part=top>,    pos3);
            world.setBlockState(<blockstate:thebetweenlands:waystone:active=false,part=middle>, pos2);
            Commands.call(
                "playsound entity.lightning.thunder block @s " ~
                (pos3.x as int) ~ " " ~ (pos3.y as int) ~ " " ~ (pos3.z as int),
                event.player, event.world, false, true
            );
            if !event.player.creative {
                mainItem.splitStack(1);
                event.player.setItemToSlot(IEntityEquipmentSlot.mainHand(), mainItem);
            }
        } else {
            (<thebetweenlands:smooth_betweenstone> * 2).createEntityItem(world, pos2);
            <thermalfoundation:storage_alloy:7>.createEntityItem(world, pos2);
        }
    });
//----
