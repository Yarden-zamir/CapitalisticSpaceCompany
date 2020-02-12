import mods.zenscroll.ZenScroll;
import mods.zenscroll.ScrollGroup;

var conveyors = ScrollGroup.of(
<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"})
,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"})
,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:uncontrolled"})
,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:dropper"})
,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:vertical"})
,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:splitter"})
);
var coveredConveyors = ScrollGroup.of(
<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:covered"})
,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:droppercovered"})
,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:verticalcovered"})
,<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:extractcovered"})
);
var mvWireThingies = ScrollGroup.of(
<immersiveengineering:connector:2>
,<immersiveengineering:connector:3>
);
var hvWireThingies = ScrollGroup.of(
<immersiveengineering:connector:4>
,<immersiveengineering:connector:5>
);
var shapeCards = ScrollGroup.of(
<rftools:shape_card>
,<rftools:shape_card:1>
);
var shapeCardsQuarry = ScrollGroup.of(
<rftools:shape_card:2>
,<rftools:shape_card:3>
,<rftools:shape_card:4>
,<rftools:shape_card:5>
,<rftools:shape_card:6>
,<rftools:shape_card:7>
);
var shapeCardsPump = ScrollGroup.of(
<rftools:shape_card:8>
,<rftools:shape_card:9>
,<rftools:shape_card:10>
);
ZenScroll.add(conveyors);
ZenScroll.add(coveredConveyors);
ZenScroll.add(mvWireThingies);
ZenScroll.add(hvWireThingies);
ZenScroll.add(shapeCards);
ZenScroll.add(shapeCardsQuarry);
ZenScroll.add(shapeCardsPump);
