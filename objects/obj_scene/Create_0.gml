/// @description Insert description here
// You can write your code in this editor


show_debug_message("HEHEHE");
Z=0;


plane={
	vertexFrame: vertex_get_plane(global.vFormatTex),
	position: [0,0,2],
	rotation: [0,0,0],
	scale: [200,200,200],
	transformMat: 0,
	origin: [0,0,0]
};
plane.transformMat=matrix_build(plane.position[0],plane.position[1],plane.position[2],
								plane.rotation[0],plane.rotation[1],plane.rotation[2],
								plane.scale[0],plane.scale[1],plane.scale[2]);
planeTransformUniform=shader_get_uniform(shd_plane,"objectTransform");

planeTransformUniformInt=shader_get_uniform(shd_intersect,"planeTransform");
objectTransformUniformInt=shader_get_uniform(shd_intersect,"objectTransformInv");
voxelMapUniform=shader_get_sampler_index(shd_intersect,"voxelMap");
sizeXUniform=shader_get_uniform(shd_intersect,"sizeX");
sizeYUniform=shader_get_uniform(shd_intersect,"sizeY");
sizeZUniform=shader_get_uniform(shd_intersect,"sizeZ");
surfSizeUniform=shader_get_uniform(shd_intersect,"surfSize");


intersectMask=surface_create(1/obj_player.object.scale[0]*plane.scale[0]*2,1/obj_player.object.scale[0]*plane.scale[1]*2);

voxelMapXsize=array_length(obj_player.object.voxelMap);
voxelMapYsize=array_length(obj_player.object.voxelMap[0]);
voxelMapZsize=array_length(obj_player.object.voxelMap[0][0]);

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
			draw_point_color(xx,yy,make_color_rgb(obj_player.object.voxelMap[i][j][k],0,0));
		}
	}
}
surface_reset_target();

