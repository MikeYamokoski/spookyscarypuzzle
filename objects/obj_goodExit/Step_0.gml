if (place_meeting(x, y, obj_player)){
	with (obj_nextLevel) {
		goodOpen = 1;
	}
} else {
	with(obj_nextLevel){
		goodOpen = 0;
	}
}