if (keyboard_check(ord("C"))){
	x = obj_player.x + sign(obj_player.image_xscale) * 32;
	y = obj_player.y - 32;
	
} else{
	instance_destroy();
}

/*( keyboard_check_released(ord("C"))){
		instance_destroy();
	}