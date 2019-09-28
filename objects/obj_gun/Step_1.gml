x = obj_player.x;
y = obj_player.y +10;

image_angle = point_direction(x,y, mouse_x, mouse_y);

if(mouse_check_button(mb_left) && (firingdelay <= 0)){
	instance_create_layer(x, y, "layer_bullets", obj_bullet);
	firingdelay = 10;
	recoil = 4;
}
firingdelay += -1;
recoil = max(0, recoil - 1);
x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_x(recoil, image_angle);
if ((image_angle > 90) && (image_angle < 270)) {
	image_yscale = -1;
} else {
	image_yscale = 1
}