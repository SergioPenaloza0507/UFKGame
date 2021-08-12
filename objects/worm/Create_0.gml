/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
direction_face = worm_spawner.direction_obj;
worm_vel = 0;
switch(direction_face){
	case 0:
		image_xscale=-1;
		worm_vel = 30;
	break;
	case 1:
		worm_vel = -30;
	break;
}