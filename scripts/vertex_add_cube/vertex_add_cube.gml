// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function vertex_add_cube(vFormat,x,y,z,size){
	//var c=make_color_rgb(100,100,100);
	var c=c_white;
	//vertex_begin(vBuffer,vFormat);

	vertex_position_3d(vBuffer,x+0,y+0,z+0);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+size,y+0,z+0);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+0,y+size,z+0);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	
	vertex_position_3d(vBuffer,x+size,y+0,z+0);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+size,y+size,z+0);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+0,y+size,z+0);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	
	
	vertex_position_3d(vBuffer,x+0,y+0,z+0);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+size,y+0,z+0);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+0,y+0,z+size);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	
	vertex_position_3d(vBuffer,x+0,y+0,z+size);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+size,y+0,z+0);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+size,y+0,z+size);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	
	
	vertex_position_3d(vBuffer,x+0,y+0,z+0);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+0,y+size,z+0);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+0,y+0,z+size);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	
	vertex_position_3d(vBuffer,x+0,y+0,z+size);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+0,y+size,z+0);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+0,y+size,z+size);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	
	
	
	vertex_position_3d(vBuffer,x+size,y+0,z+0);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+size,y+size,z+0);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+size,y+size,z+size);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	
	vertex_position_3d(vBuffer,x+size,y+0,z+0);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+size,y+0,z+size);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+size,y+size,z+size);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	
	
	vertex_position_3d(vBuffer,x+0,y+size,z+0);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+size,y+size,z+0);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+size,y+size,z+size);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	
	vertex_position_3d(vBuffer,x+0,y+size,z+0);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+0,y+size,z+size);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+size,y+size,z+size);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	
	
	vertex_position_3d(vBuffer,x+0,y+0,z+size);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+0,y+size,z+size);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+size,y+size,z+size);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	
	vertex_position_3d(vBuffer,x+0,y+0,z+size);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+size,y+0,z+size);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+size,y+size,z+size);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	
	

	//vertex_end(vBuffer);
}