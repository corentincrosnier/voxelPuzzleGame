/// @description Insert description here
// You can write your code in this editor


translationSpeed=1;
object={
	voxelMap:0,
	voxelFrame:0,
	vertexFrame:0,
	position: [x-room_width/2,0,0],
	rotation: [0,0,0],
	scale: [1,1,1],
	transformMat:0,
	origin: [0,0,0]
};
object.voxelMap=voxel_load_map("torus.txt",-10,0,0,0.5);
object.voxelFrame=voxel_get_frame(object.voxelMap);
object.vertexFrame=vertex_get_frame(global.vFormat,object.voxelMap);
object.transformMat=matrix_build(object.position[0],object.position[1],object.position[2],
								object.rotation[0],object.rotation[1],object.rotation[2],
								object.scale[0],object.scale[1],object.scale[2]);
objectTransformUniform=shader_get_uniform(shd_voxel,"objectTransform");




