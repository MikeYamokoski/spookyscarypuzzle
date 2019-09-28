if (place_meeting(x, y, obj_shadowPlayer)){
	with (obj_nextLevel) {
		badOpen = 1;
	}
} else {
	with(obj_nextLevel){
		badOpen = 0;
	}
}