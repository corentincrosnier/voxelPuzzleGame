/// @description Insert description here
// You can write your code in this editor



voxelMapXsize=array_length(obj_player.object.voxelMap);
voxelMapYsize=array_length(obj_player.object.voxelMap[0]);
voxelMapZsize=array_length(obj_player.object.voxelMap[0][0]);
voxelMap1d=array_create(voxelMapXsize*voxelMapYsize*voxelMapZsize);


intersectMask=surface_create(1/obj_player.object.scale[0]*obj_scene.plane.scale[0]*2,1/obj_player.object.scale[0]*obj_scene.plane.scale[1]*2);
intersectW=surface_get_width(intersectMask);
intersectH=surface_get_height(intersectMask);
intersectMask_=surface_create(intersectW,intersectH);
show_debug_message(intersectW);
show_debug_message(intersectH);

intersectSizeUniform=shader_get_uniform(shd_intersect,"intersectSize");
planeTransformUniformInt=shader_get_uniform(shd_intersect,"planeTransform");
objectTransformUniformInt=shader_get_uniform(shd_intersect,"objectTransformInv");
voxelMapUniform=shader_get_sampler_index(shd_intersect,"voxelMap");
sizeXUniform=shader_get_uniform(shd_intersect,"sizeX");
sizeYUniform=shader_get_uniform(shd_intersect,"sizeY");
sizeZUniform=shader_get_uniform(shd_intersect,"sizeZ");
surfSizeUniform=shader_get_uniform(shd_intersect,"surfSize");


var size=voxelMapXsize*voxelMapYsize*voxelMapZsize;
surfSize=floor(sqrt(size))+1;
voxelMapSurf=surface_create(surfSize,surfSize);
surface_set_target(voxelMapSurf);
for(var i=0; i<voxelMapXsize; i++){
	for(var j=0; j<voxelMapYsize; j++){
		for(var k=0; k<voxelMapZsize; k++){
			//buffer_write(buffer, buffer_u8, object.voxelMap[i][j][k]);
			//if(i+j*voxelMapXsize+k*voxelMapXsize*voxelMapYsize<30000)
			var ind=i+j*voxelMapXsize+k*voxelMapXsize*voxelMapYsize;
			var xx=ind%surfSize;
			var yy=floor(ind/surfSize);
			var c;
			if(obj_player.object.voxelMap[i][j][k]==1)
				c=make_color_rgb(255,0,0);
			else
				c=make_color_rgb(0,0,0);
			draw_point_color(xx,yy,c);
		}
	}
}
surface_reset_target();





_buffer=vertex_create_buffer();
vertex_begin(_buffer,global.vFormatTex);
	
var c=c_lime;
	
vertex_position_3d(_buffer,0,0,0);
vertex_normal(_buffer,0,0,1);
vertex_color(_buffer,c,1);
vertex_texcoord(_buffer,0,0);
vertex_position_3d(_buffer,1,0,0);
vertex_normal(_buffer,0,0,1);
vertex_color(_buffer,c,1);
vertex_texcoord(_buffer,1,0);
vertex_position_3d(_buffer,0,1,0);
vertex_normal(_buffer,0,0,1);
vertex_color(_buffer,c,1);
vertex_texcoord(_buffer,0,1);
	
vertex_position_3d(_buffer,0,1,0);
vertex_normal(_buffer,0,0,1);
vertex_color(_buffer,c,1);
vertex_texcoord(_buffer,0,1);
vertex_position_3d(_buffer,1,0,0);
vertex_normal(_buffer,0,0,1);
vertex_color(_buffer,c,1);
vertex_texcoord(_buffer,1,0);
vertex_position_3d(_buffer,1,1,0);
vertex_normal(_buffer,0,0,1);
vertex_color(_buffer,c,1);
vertex_texcoord(_buffer,1,1);
	
vertex_end(_buffer);
vertex_freeze(_buffer);




