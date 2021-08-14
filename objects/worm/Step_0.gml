/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
switch(direction_face){
	case 0:
		if x >= window_get_width()/4{
			worm_vel *= -1;
		}
	break;
	case 1:
		if x <= (window_get_width()/4)*3{
		    worm_vel *= -1;
		}
	break;
}

speed = worm_vel;
x+=speed;

switch(direction_face){
	case 0:
		if x <= -window_get_width(){
		    instance_destroy();
		}
	break;
	case 1:
	if x >= window_get_width()*2{
			instance_destroy();
		}
	break;
}
