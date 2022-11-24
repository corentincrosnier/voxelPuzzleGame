// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function vertex_face_Zmin(buffer,size,c,i,j,k){
	vertex_position_3d(buffer,i,j,k);
	vertex_normal(buffer,0,0,-1);
	vertex_color(buffer,c,1);
	vertex_position_3d(buffer,i+size,j,k);
	vertex_normal(buffer,0,0,-1);
	vertex_color(buffer,c,1);
	vertex_position_3d(buffer,i,j+size,k);
	vertex_normal(buffer,0,0,-1);
	vertex_color(buffer,c,1);
	
	vertex_position_3d(buffer,i+size,j,k);
	vertex_normal(buffer,0,0,-1);
	vertex_color(buffer,c,1);
	vertex_position_3d(buffer,i,j+size,k);
	vertex_normal(buffer,0,0,-1);
	vertex_color(buffer,c,1);
	vertex_position_3d(buffer,i+size,j+size,k);
	vertex_normal(buffer,0,0,-1);
	vertex_color(buffer,c,1);
}