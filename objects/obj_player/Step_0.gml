key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);


// calculate Movement
var move = key_right - key_left;

if (key_right - key_left != 0){
hsp = move * min(abs(walksp), abs(hsp + (0.4 * move)));
} else {
	hsp = move * max(0, abs(hsp - (0.4 * move)));
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

if ((place_meeting(x, y + 1, obj_wall))) || (place_meeting(x, y + 1, obj_box)){
	jump = 1;
}

vsp += grv;

if ((jump > 0) && (key_jump)) {
	vsp = -8.8;
	jump -= 1;
}
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

//WaterGrabbing
if ((place_meeting(x, y + vsp, obj_cauldron)) && (keyboard_check_pressed(ord("C")))){
	instance_create_layer(x + 32*sign(image_xscale), y - 32, "layer_player", obj_water);
}
// Animation

if ((!place_meeting(x, y + 1, obj_wall)) && (!place_meeting(x, y + 1, obj_box))){
	
	sprite_index = spr_airbourne;
	image_speed = 0;
	
	if (sign(vsp)> 0){
		image_index = 1;
	} else {
		image_index = 0;
	}
} else {
	image_speed = 1;
	if (hsp == 0){
		sprite_index = spr_player;
	} else {
		sprite_index = spr_running;
	}
	
}
if (hsp != 0){
image_xscale = sign(hsp);
}