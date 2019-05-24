



surface_resize(application_surface,window_width, window_height);

shader_set(shd_setColors);
var shader_darkR = shader_get_uniform(shd_setColors,"darkR");
var shader_darkG = shader_get_uniform(shd_setColors,"darkG");
var shader_darkB = shader_get_uniform(shd_setColors,"darkB");
var shader_lightR = shader_get_uniform(shd_setColors,"lightR");
var shader_lightG = shader_get_uniform(shd_setColors,"lightG");
var shader_lightB = shader_get_uniform(shd_setColors,"lightB");

shader_set_uniform_f(shader_darkR,themeColors[COLOR.darkR]);
shader_set_uniform_f(shader_darkG,themeColors[COLOR.darkG]);
shader_set_uniform_f(shader_darkB,themeColors[COLOR.darkB]);

shader_set_uniform_f(shader_lightR,themeColors[COLOR.lightR]);
shader_set_uniform_f(shader_lightG,themeColors[COLOR.lightG]);
shader_set_uniform_f(shader_lightB,themeColors[COLOR.lightB]);

draw_surface_ext(application_surface,0,0,window_scale,window_scale,0,c_white,1);
shader_reset();
