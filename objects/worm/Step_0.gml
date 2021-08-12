/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
switch(direction_face){
	case 0:
		if x >= window_get_width()/2{
			worm_vel *= -1;
		}
	break;
	case 1:
		if x <= window_get_width()/2{
		    worm_vel *= -1;
		}
	break;
}

speed = worm_vel;
