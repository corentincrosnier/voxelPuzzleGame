/// @description Insert description here
// You can write your code in this editor
//x=0;
//y=0;
//z=0;
object={
	voxelMap:0,
	voxelFrame:0,
	vertexFrame:0,
	position: [0,0,0],
	rotation: [-90,0,0],
	scale: [1,1,1],
	transformMat:0,
	barycentre: [0,0,0],
	origin: [0,0,0],
	transformOrigin: 0
	
};
object.voxelMap=voxel_load_map("xyzrgb_dragon_171x77x114.txt",-10,0,0,0.5);
object.voxelFrame=voxel_get_frame(object.voxelMap);
object.vertexFrame=vertex_get_frame(global.vFormat,object.voxelMap);
object.transformMat=matrix_build(object.position[0],object.position[1],object.position[2],
								object.rotation[0],object.rotation[1],object.rotation[2],
								object.scale[0],object.scale[1],object.scale[2]);
object.barycentre=voxel_frame_get_barycentre(object.voxelFrame);
object.origin=matrix_build(-object.barycentre[0],-object.barycentre[1],-object.barycentre[2],0,0,0,1,1,1);
matrix_stack_push(object.transformMat);
matrix_stack_push(object.origin);
object.transformOrigin=matrix_stack_top();
matrix_stack_clear();
objectTransformUniform=shader_get_uniform(shd_voxel,"objectTransform");

global.p=object;






