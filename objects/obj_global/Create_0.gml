/// @description Insert description here
// You can write your code in this editor

global.collisionStep=1;

global.intersectMask=surface_create(room_width,room_height);
global.intersectW=surface_get_width(global.intersectMask);
global.intersectH=surface_get_height(global.intersectMask);
global.intersectMask_=surface_create(global.intersectW,global.intersectH);
show_debug_message(global.intersectW);
show_debug_message(global.intersectH);


global.world_surface=surface_create(room_width,room_height);

vertex_format_begin()
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_color();
global.vFormat=vertex_format_end();

//voxel=vertex_create_cube(vFormat,1);


vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_color();
vertex_format_add_texcoord();
global.vFormatTex=vertex_format_end();
