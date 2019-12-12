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

function init(e){ // start
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
		{companyName:"§6Zero-G toiletries",itemIcon:ITM("contenttweaker:comp_1")},
		{companyName:"§8STAR-matter",itemIcon:ITM("contenttweaker:comp_2")}
	];
	offers = [   //All the deals to start with
		{company:companies[0],buy:ITM("minecraft:log"),sell:ITM("minecraft:glowstone_dust"),buyAmount:60,sellAmount:290,type:dealType.INF},
		{company:companies[0],buy:ITM("minecraft:log"),sell:ITM("minecraft:paper"),buyAmount:200,sellAmount:200,type:dealType.INF},
		{company:companies[1],buy:ITM("minecraft:sand"),sell:ITM("minecraft:paper"),buyAmount:600,sellAmount:200,type:dealType.INF}
	];
}
function interact(e){ //when the player interacts
	block.getTextPlane().setRotationY(block.getTextPlane().getRotationY()+90);
}
function ITM(strName){ //move to util class or something
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
	var b = world.getBlock(block.getX(),block.getY()+1,block.getZ());
	if (b.isContainer()){
			inbox = b.getContainer();

		for (var i=0;i<inbox.getItems().length;i++){ //clear inventory of inbox
			inbox.setSlot(i,null);
			//todo check before removing items if they are offers, if not, dump on ground
		}
		offers.forEach(function (offer,index){ //loop through offers
			var itemOffer = offer.company.itemIcon.copy();
			itemOffer.setCustomName(formatOffer(offer));
			itemOffer.setLore([offer.company.companyName]);
			inbox.setSlot(index,itemOffer);
		});
	}
}
function updateTransmitor(){ //updates the transmitor to see the deals that are now active
	var b = world.getBlock(block.getX(),block.getY()+2,block.getZ());
	var goodOffers =[];
	if (b.isContainer()){
		transmitor = b.getContainer();
		block.getTextPlane().setText("");//reset panel
		for (var i=0;i<transmitor.getItems().length;i++){
			var goodOffer = null;
			offers.forEach(function (offer){
				if (goodOffer==null){
					if (transmitor.getSlot(i).getDisplayName()==formatOffer(offer)){
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
		if (input.getContainer()!=null){ // if it has inventory
			var container = input.getContainer();
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
	inputBlocks.forEach(function (b){
		if (b.isContainer()){
			inputContainers.push(b.getContainer());
		}
	});
	inputContainers.forEach(function (container){
		offers.forEach(function(offer){
			if (container.count(offer.buy,false,false)>=offer.buyAmount){
				for (var i=0;i<container.getItems().length;i++){
					var slot = container.getItems()[i];
					a = a-slot.getStackSize(); //The amount of items we need to leave this slot with
					if (a<0) slot.setStackSize(a*-1);
					else slot.setStackSize(0);
					handshake(offer, null);
				}
			}
		});
	});
}
function handshake(offer, paymentInv){ //accepts the offer and sends reward
	block.API.getClones().spawn(paymentInv.block.getX(),paymentInv.block.getY(),paymentInv.block.getZ(),0,)
}
function purge(container,slot){
	container.setSlot(slot,null);
	//todo dump items on ground
}
function formatOffer(offer){
	return ("§rselling "+offer.sellAmount+" §2"+offer.sell.getDisplayName()+"§r in exchange for "+offer.buyAmount+" §4"+offer.buy.getDisplayName());
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
