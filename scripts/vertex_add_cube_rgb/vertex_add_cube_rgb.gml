// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function vertex_add_cube_rgb(vBuffer,vFormat,x,y,z,c){
	vertex_begin(vBuffer,vFormat);

	vertex_position_3d(vBuffer,x+0,y+0,z+0);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+1,y+0,z+0);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+0,y+1,z+0);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	
	vertex_position_3d(vBuffer,x+1,y+0,z+0);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+1,y+1,z+0);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+0,y+1,z+0);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	
	
	vertex_position_3d(vBuffer,x+0,y+0,z+0);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+1,y+0,z+0);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+0,y+0,z+1);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	
	vertex_position_3d(vBuffer,x+0,y+0,z+1);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+1,y+0,z+0);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+1,y+0,z+1);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	
	
	vertex_position_3d(vBuffer,x+0,y+0,z+0);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+0,y+1,z+0);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+0,y+0,z+1);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	
	vertex_position_3d(vBuffer,x+0,y+0,z+1);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+0,y+1,z+0);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+0,y+1,z+1);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	
	
	
	vertex_position_3d(vBuffer,x+1,y+0,z+0);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+1,y+1,z+0);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+1,y+1,z+1);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	
	vertex_position_3d(vBuffer,x+1,y+0,z+0);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+1,y+0,z+1);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+1,y+1,z+1);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	
	
	vertex_position_3d(vBuffer,x+0,y+1,z+0);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+1,y+1,z+0);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+1,y+1,z+1);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	
	vertex_position_3d(vBuffer,x+0,y+1,z+0);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+0,y+1,z+1);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+1,y+1,z+1);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	
	
	vertex_position_3d(vBuffer,x+0,y+0,z+1);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+0,y+1,z+1);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+1,y+1,z+1);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	
	vertex_position_3d(vBuffer,x+0,y+0,z+1);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+1,y+0,z+1);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	vertex_position_3d(vBuffer,x+1,y+1,z+1);
	vertex_normal(vBuffer,0,0,1);
	vertex_color(vBuffer,c,1);
	
	

	vertex_end(vBuffer);
	vertex_freeze(vBuffer);
}