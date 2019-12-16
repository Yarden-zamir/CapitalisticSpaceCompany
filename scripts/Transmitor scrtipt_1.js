//vars
var world;
var block;
//containers
var inbox, transmitor;
//loop related
var checkTickTimerId = 0;
var tickTimerInterval = 2;
//
var x,y,z;
//offers and companies
var dealType = {
	INSTANT:0,
	DAILY:1,
	WEEKLY:2,
	INF:3
};
var companies;
var offers;
//
var event;
function init(e){ // start
	event = e;
	block = e.block;
	world = block.getWorld();
	initData();
	//
	checkTick(); //initial tick
	block.getTimers().forceStart(checkTickTimerId, tickTimerInterval, true);
	//
	x = parseFloat(block.getX())+0.5;
	y = parseFloat(block.getY())+0.5;
	z = parseFloat(block.getZ())+0.5;
}
function initData(){
	//first run
	//todo add a loader for later runs
	block.setModel("minecraft:wool");
	block.getTextPlane().setScale(0.5);
	companies = [ //All the different companies in the game [https://minecraft.gamepedia.com/Formatting_codes]
		{companyName:"§6Zero-G toiletries",itemIcon:getItem("contenttweaker:comp_1")},
		{companyName:"§8STAR-matter",itemIcon:getItem("contenttweaker:comp_2")}
	];
	offers = [   //All the deals to start with
		{company:companies[0],buy:getItem("minecraft:log"),sell:getItem("minecraft:glowstone_dust"),buyAmount:60,sellAmount:290,type:dealType.INF},
		{company:companies[0],buy:getItem("minecraft:log"),sell:getItem("minecraft:paper"),buyAmount:200,sellAmount:200,type:dealType.INF},
		{company:companies[1],buy:getItem("minecraft:sand"),sell:getItem("minecraft:paper"),buyAmount:600,sellAmount:200,type:dealType.INF}
	];
}
function interact(e){ //when the player interacts
	block.getTextPlane().setRotationY(block.getTextPlane().getRotationY()+90);
}
function getItem(strName){ //move to util class or something
	return world.createItem(strName, 0, 1);
}
function timer(e){
	switch (e.id){
		case checkTickTimerId:
				checkTick();
			break;
	}
}
function checkTick(){
	world.spawnParticle("smoke",x,y,z,0,0.9,0,0.1,20);
	updateInbox();
	updateTransmitor();
}
function updateInbox(){
	var inboxBlock = world.getBlock(block.getX(),block.getY()+1,block.getZ());
	if (inboxBlock.isContainer()){
			inbox = inboxBlock.getContainer();

		for (var i=0;i<inbox.getItems().length;i++){ //clear inventory of inbox
			inbox.setSlot(i,null);
			//todo check before removing items if they are offers, if not, dump on ground
		}
		offers.forEach(function (offer,index){ //loop through offers
			var itemOffer = offer.company.itemIcon.copy();
			itemOffer.setCustomName(formatOfferName(offer));
			itemOffer.setLore(formatOfferLore(offer));
			inbox.setSlot(index,itemOffer);
		});
	}else{

	}
}
function updateTransmitor(){ //updates the transmitor to see the deals that are now active
	var transmitorBlock = world.getBlock(block.getX(),block.getY()+2,block.getZ());
	var goodOffers =[];
	if (transmitorBlock.isContainer()){
		transmitor = transmitorBlock.getContainer();
		block.getTextPlane().setText("");//reset panel
		for (var i=0;i<transmitor.getItems().length;i++){
			var goodOffer = null;
			offers.forEach(function (offer){
				if (goodOffer==null){
					if (transmitor.getSlot(i).getDisplayName()==formatOfferName(offer)){
						goodOffer=offer;
					}}
				});
				if (goodOffer!=null){
					var dealStr = transmitor.getSlot(i).getDisplayName()+"\n";
					if(block.getTextPlane().getText().indexOf(dealStr,0)==-1){ //if it doesn't already contain the deal
						block.getTextPlane().setText(block.getTextPlane().getText()+dealStr);
						goodOffers.push(goodOffer);
					}else{//if it does, then it is not needed
						purge(transmitor,i);
					}
				}else{
					purge(transmitor,i);
				}
			}
	}
	checkOffers(goodOffers);
}
function checkOffers(offers){
	var inputs = [
		{block:world.getBlock(block.getX()+1,block.getY(),block.getZ()),container:null},
		{block:world.getBlock(block.getX()-1,block.getY(),block.getZ()),container:null},
		{block:world.getBlock(block.getX(),block.getY(),block.getZ()+1),container:null},
		{block:world.getBlock(block.getX(),block.getY(),block.getZ()-1),container:null}
	] // array of all the possible inputs for deals.
	inputs.forEach(function (input){
		if (input.block.isContainer()){
			input.container = input.block.getContainer();
		}
	});
	inputs.forEach(function(input){
		if (input.container!=null){ // if it has inventory
			var container = input.container;
			offers.forEach(function(offer){ //runs through the offers of each input
				if (container.count(offer.buy,false,false)>=offer.buyAmount){
					handshake(offer, input);
				}
			});
		}
	});
	//
	var inputBlocks = [
		world.getBlock(block.getX()+1,block.getY(),block.getZ()),
		world.getBlock(block.getX()-1,block.getY(),block.getZ()),
		world.getBlock(block.getX(),block.getY(),block.getZ()+1),
		world.getBlock(block.getX(),block.getY(),block.getZ()-1),
	]
	var inputContainers = [];
	inputBlocks.forEach(function (inputBlock){
		if (inputBlock.isContainer()){
			inputContainers.push(inputBlock.getContainer());
		}
	});
	inputContainers.forEach(function (container){
		offers.forEach(function(offer){
			if (container.count(offer.buy,false,false)>=offer.buyAmount){
				for (var i=0;i<container.getItems().length;i++){
					var slot = container.getItems()[i];
					var a = a-slot.getStackSize(); //The amount of items we need to leave this slot with
					if (a<0) slot.setStackSize(a*-1);
					else slot.setStackSize(0);
					handshake(offer, null);
				}
			}
		});
	});
}
function handshake(offer, paymentInv){ //accepts the offer and sends reward
	event.API.getClones().spawn(paymentInv.block.getX(),256.0,paymentInv.block.getZ(),1,"Chest",world);
}
function purge(container,slot){
	container.setSlot(slot,null);
	//todo dump items on ground
}
function formatOfferName(offer){ //change name to formatOfferName
	return ("§l"+offer.company.companyName+" Trade Offer");
}
function formatOfferLore(offer){
//return ("§rselling "+offer.sellAmount+" §2"+offer.sell.getDisplayName()+"§r in exchange for "+offer.buyAmount+" §4"+offer.buy.getDisplayName());
	return[
		"§rSelling "+offer.sellAmount+" §lX §6"+offer.sell.getDisplayName(),
		"§rBuying "+offer.buyAmount+" §lX §9"+offer.buy.getDisplayName()
	];
}
function arrContains(arr, item){
	var r = false;
	arr.forEach(function (i){
		if (i.compare(item,false)){
			r = true;
		}
	});
	return r;
}
