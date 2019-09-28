if (is_facing_right) {
	hsp = walksp
} else {
	hsp = -1 * walksp
}

//Horizontal Collision
if (place_meeting(x + hsp, y, obj_wall)){
	while (!place_meeting(x + sign(hsp), y, obj_wall)){
		x += sign(hsp);
	}
	if (is_facing_right) {
		hsp = -1 * walksp
	} else {
		hsp = walksp
	}
	is_facing_right = !is_facing_right
}

//Horizontal Collision with box
if (place_meeting(x + hsp, y, obj_box)){
	while (!place_meeting(x + sign(hsp), y, obj_box)){
		x += sign(hsp);
	}
	if (is_facing_right) {
		hsp = -1 * walksp
	} else {
		hsp = walksp
	}
	is_facing_right = !is_facing_right
}

x += hsp;

if (place_meeting(x, y + 1, obj_wall)){
	jump = 2;
}

vsp += grv;


//Vertical Collision
if (place_meeting(x, y + vsp, obj_wall)){
	
	while (!place_meeting(x, y + sign(vsp), obj_wall)){
		y += sign(vsp);
		
	}
	vsp = 0;
}
y += vsp;

// Animation
image_speed = 1;
if (!place_meeting(x, y + 1, obj_wall)){
	
	sprite_index = spr_enemyair;
	image_speed = 0;
	
	if (sign(vsp)> 0){
		image_index = 1;
	} else {
		image_index = 0;
	}
} else {
	image_speed = 1;
	if (hsp == 0){
		sprite_index = spr_enemy;
	} else {
		sprite_index = spr_enemyrunning;
	}
	
}
if (hsp != 0){
image_xscale = sign(hsp);
}
if (hp <= 0) {
	
	sprite_index = spr_enemydeath
}