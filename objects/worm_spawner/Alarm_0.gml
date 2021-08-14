/// @description Time by spawn
// Puede escribir su código en este editor
alarm[0] = 360 

direction_obj = irandom(1);
_x= 0;

switch(direction_obj) {
	case 0:
	_x = -400;
	break;
	case 1:
	_x = 1800;	
	break;
	break;	
}
instance_create_layer(_x,window_get_height()/2,layer,object_worm);
