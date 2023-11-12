use <libraries/enclosure/d1-mini-node-mcu.scad>
use <libraries/enclosure/dc-jack-socket.scad>
use <libraries/enclosure/pilars.scad>
include <libraries/enclosure/components.scad>

t = [
	[D1_MINI_NODE_MCU, [3, 0, 2]],
	[DC_JACK_SOCKET, [57, 1, 2]]
];

renderComponents(t) {
	difference() {
		cube([70, 70, 30]);
		
		translate([2,2,2]) 
			cube([66, 66, 30]);
	}
}

d1MiniNodeMcuButton([-10,0], 7);


t1 = [
	[D1_MINI_NODE_MCU, [3, 0, 2]]
];

// renderComponents(t1) {
// 	difference() {
// 		cube([36, 50, 2]);
// 	}
// }


d1MiniNodeMcuFixate([100,0,0]);	