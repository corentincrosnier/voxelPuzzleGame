// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function vertex_get_plane(vformat){
	var buffer=vertex_create_buffer();
	vertex_begin(buffer,vformat);
	
	var c=c_lime;
	
	vertex_position_3d(buffer,-1,-1,0);
	vertex_normal(buffer,0,0,1);
	vertex_color(buffer,c,1);
	vertex_texcoord(buffer,0,0);
	vertex_position_3d(buffer,1,-1,0);
	vertex_normal(buffer,0,0,1);
	vertex_color(buffer,c,1);
	vertex_texcoord(buffer,1,0);
	vertex_position_3d(buffer,-1,1,0);
	vertex_normal(buffer,0,0,1);
	vertex_color(buffer,c,1);
	vertex_texcoord(buffer,0,1);
	
	vertex_position_3d(buffer,-1,1,0);
	vertex_normal(buffer,0,0,1);
	vertex_color(buffer,c,1);
	vertex_texcoord(buffer,0,1);
	vertex_position_3d(buffer,1,-1,0);
	vertex_normal(buffer,0,0,1);
	vertex_color(buffer,c,1);
	vertex_texcoord(buffer,1,0);
	vertex_position_3d(buffer,1,1,0);
	vertex_normal(buffer,0,0,1);
	vertex_color(buffer,c,1);
	vertex_texcoord(buffer,1,1);
	
	vertex_end(buffer);
	vertex_freeze(buffer);
	return buffer;
}