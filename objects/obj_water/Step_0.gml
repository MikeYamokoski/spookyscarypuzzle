if (keyboard_check(ord("C"))){
	x = obj_player.x + sign(obj_player.image_xscale) * 32;
	y = obj_player.y - 32;
	
} else{
	// vertical speed
vsp += grv;

//Vertical Collision
if (place_meeting(x, y + vsp, obj_wall)){
	
	while (!place_meeting(x, y + sign(vsp), obj_wall)){
		y += sign(vsp);
		
	}
	instance_destroy();
}
if (place_meeting(x, y + vsp, obj_box)){
	
	while (!place_meeting(x, y + sign(vsp), obj_box)){
		y += sign(vsp);
		
	}
	instance_destroy();
}
y += vsp;
}

