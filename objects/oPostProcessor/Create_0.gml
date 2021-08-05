/// @description Initialize required values for post effects
// You can write your code in this editor
application_surface_draw_enable(false);
w = surface_get_width(application_surface);
h = surface_get_height(application_surface);
strength_id = shader_get_uniform(GaussianBlur3x3, "strength");
texelSize_id = shader_get_uniform(GaussianBlur3x3, "texelSize");
threshold_id = shader_get_uniform(BloomThresholder, "threshold");
softKnee_id = shader_get_uniform(BloomThresholder, "softKnee");
add_sample = shader_get_sampler_index(Add, "addTex");




show_debug_message(10 mod 2);