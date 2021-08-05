/// @description Apply post effects

//Threshold bloom from original scene (not HDR)
surfs = [surface_create(w, h), surface_create(w, h)];
surface_set_target(surfs[0]);
shader_set(BloomThresholder);
shader_set_uniform_f(threshold_id, threshold);
shader_set_uniform_f(softKnee_id, soft_knee);
draw_surface(application_surface,0,0);
shader_reset();
surface_reset_target();



//Apply blur to thresholded surface
for(i = 1; i < iterations; i++){
	surface_set_target(surfs[i mod 2]);
	shader_set(GaussianBlur3x3);
	shader_set_uniform_f(strength_id, strength);
	shader_set_uniform_f(texelSize_id, 1/w, 1/h)
	draw_surface(surfs[(i+1) mod 2],0,0);
	shader_reset();
	surface_reset_target();
}

//Add Bloom to scene
shader_set(Add);
tex = surface_get_texture(surfs[iterations mod 2]);
texture_set_stage(add_sample, tex);
draw_surface(application_surface,0,0);
shader_reset();
