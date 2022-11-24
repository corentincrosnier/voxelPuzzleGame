/// @description Insert description here
// You can write your code in this editor


show_debug_message("HEHEHE");
Z=0;

vertex_format_begin()
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_color();
vFormat=vertex_format_end();

//voxel=vertex_create_cube(vFormat,1);

object={
	voxelMap:0,
	voxelFrame:0,
	vertexFrame:0,
	position: [0,0,0],
	rotation: [90,0,0],
	scale: [1,1,1],
	transformMat:0,
	origin: [0,0,0]
};
object.voxelMap=voxel_load_map("torus.txt",-10,0,0,0.5);
object.voxelFrame=voxel_get_frame(object.voxelMap);
object.vertexFrame=vertex_get_frame(vFormat,object.voxelMap);
object.transformMat=matrix_build(object.position[0],object.position[1],object.position[2],
								object.rotation[0],object.rotation[1],object.rotation[2],
								object.scale[0],object.scale[1],object.scale[2]);
objectTransformUniform=shader_get_uniform(shd_voxel,"objectTransform");


vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_color();
vertex_format_add_texcoord();
vFormatTex=vertex_format_end();

plane={
	vertexFrame: vertex_get_plane(vFormatTex),
	position: [0,0,2],
	rotation: [0,0,0],
	scale: [100,100,100],
	transformMat: 0,
	origin: [0,0,0]
};
plane.transformMat=matrix_build(plane.position[0],plane.position[1],plane.position[2],
								plane.rotation[0],plane.rotation[1],plane.rotation[2],
								plane.scale[0],plane.scale[1],plane.scale[2]);
planeTransformUniform=shader_get_uniform(shd_plane,"objectTransform");

voxelMapXsize=array_length(object.voxelMap);
voxelMapYsize=array_length(object.voxelMap[0]);
voxelMapZsize=array_length(object.voxelMap[0][0]);
//voxelMapXsize=20;
//voxelMapYsize=20;
//voxelMapZsize=20;
voxelMap1d=array_create(voxelMapXsize*voxelMapYsize*voxelMapZsize);



//show_debug_message(array_length(voxelMap1d));
//show_debug_message(voxelMap1d);
show_debug_message(plane.transformMat);

intersectMask=surface_create(1/object.scale[0]*plane.scale[0]*2,1/object.scale[0]*plane.scale[1]*2);

planeTransformUniformInt=shader_get_uniform(shd_intersect,"planeTransform");
objectTransformUniformInt=shader_get_uniform(shd_intersect,"objectTransformInv");
voxelMapUniform=shader_get_sampler_index(shd_intersect,"voxelMap");
sizeXUniform=shader_get_uniform(shd_intersect,"sizeX");
sizeYUniform=shader_get_uniform(shd_intersect,"sizeY");
sizeZUniform=shader_get_uniform(shd_intersect,"sizeZ");
surfSizeUniform=shader_get_uniform(shd_intersect,"surfSize");



//buffer=buffer_create(1000*1000,buffer_fixed,1);
//buffer_seek(buffer, buffer_seek_start, 0);
//voxelMap1d=array_create(30000);

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
			draw_point_color(xx,yy,make_color_rgb(object.voxelMap[i][j][k],0,0));
		}
	}
}
surface_reset_target();

//intersectMaskUniform=shader_get_sampler_index(shd_intersect,"intersectMask");

//AUniform=shader_get_uniform(shd_intersect,"A");
//BUniform=shader_get_uniform(shd_intersect,"B");
//CUniform=shader_get_uniform(shd_intersect,"C");


/*
shader_set(shd_intersect);
surface_set_target(intersectMask);
draw_surface(intersectMask,0,0);
surface_reset_target();
shader_reset();*/
//matrix_set(matrix_wo


