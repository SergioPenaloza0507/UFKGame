/// @description Insert description here
// You can write your code in this editor
force = scale_2d([0.5, -0.5], thrust_force);
physics_apply_force(x , y + sprite_height, force[0], force[1]);