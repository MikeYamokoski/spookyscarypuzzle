if (place_meeting(x + 1, y, obj_player)){
	hsp = -4;
}
if (place_meeting(x - 1, y, obj_player)){
	hsp = 4;
}
if (place_meeting(x + 1, y, obj_shadowPlayer)){
	hsp = -4;
}
if (place_meeting(x - 1, y, obj_shadowPlayer)){
	hsp = 4;
}
if ((!place_meeting(x + 1, y, obj_player)) && (!place_meeting(x - 1, y, obj_player)) 
&& (!place_meeting(x + 1, y, obj_shadowPlayer)) && (!place_meeting(x - 1, y, obj_shadowPlayer))){
	hsp = 0;
}
//Horizontal Collision
if (place_meeting(x + hsp, y, obj_wall)){
	
	while (!place_meeting(x + sign(hsp), y, obj_wall)){
		x += sign(hsp);
		
	}
	hsp = 0;
}
if (place_meeting(x + hsp, y, obj_box)){
	
	while (!place_meeting(x + sign(hsp), y, obj_box)){
		x += sign(hsp);
		
	}
	hsp = 0;
}
x += hsp;


// vertical speed
vsp += grv;

//Vertical Collision
if (place_meeting(x, y + vsp, obj_wall)){
	
	while (!place_meeting(x, y + sign(vsp), obj_wall)){
		y += sign(vsp);
		
	}
	vsp = 0;
}
if (place_meeting(x, y + vsp, obj_box)){
	
	while (!place_meeting(x, y + sign(vsp), obj_box)){
		y += sign(vsp);
		
	}
	vsp = 0;
}
y += vsp;