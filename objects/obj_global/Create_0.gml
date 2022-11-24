/// @description Insert description here
// You can write your code in this editor


gpu_set_ztestenable(true);

vertex_format_begin()
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_color();
global.vFormat=vertex_format_end();

vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_color();
vertex_format_add_texcoord();
global.vFormatTex=vertex_format_end();




