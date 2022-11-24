// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function vertex_create_cube(vFormat,size){
	//var c=make_color_rgb(100,100,100);
	var c=c_white;
	//vertex_begin(buffer,vFormat);
	buffer=vertex_create_buffer();
	vertex_begin(buffer,vFormat);
	
	
	
	
	
	
	
	
	vertex_end(buffer);
	vertex_freeze(buffer);
	
	return buffer;

	//vertex_end(buffer);
}