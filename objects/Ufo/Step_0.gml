/// @description Sum forces and apply to object

if (y > (window_get_height()/6) *5 ) {
  phy_speed_y = -5;
}

//Get frame independent time delta in seconds
time_scale = delta_time * global.Mic2Sec;


//Calculete sum of directions
accumulated_thrust = [
	add_2d(left_thruster_force, right_thruster_force)[0],
	dot_2d_vec(left_thruster_force,right_thruster_force)
];

//Normalize sum of directions
if(y>room_height-25 and y< room_height/3){
accumulated_thrust = normalize_2d(accumulated_thrust);
}


//Apply physics impulse with object parameters
physics_apply_impulse(
	x ,
	y + sprite_height,
	accumulated_thrust[0] * thrust_force * time_scale,
	accumulated_thrust[1] * thrust_force * time_scale
);

//Solve current rotation
accumulated_angle = clamp(
	accumulated_angle + accumulated_thrust [0] * angular_speed * time_scale,
	-angle_cap ,
	angle_cap
) * (1 - abs(accumulated_thrust[1]));

//Apply current rotation
phy_rotation  = accumulated_angle;

