// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function matrix_recalculate_all(obj){
	obj.transformMat=matrix_build(obj.position[0],obj.position[1],obj.position[2],
								  obj.rotation[0],obj.rotation[1],obj.rotation[2],
								  obj.scale[0],obj.scale[1],obj.scale[2]);
	matrix_stack_clear();
	matrix_stack_push(obj.transformMat);
	matrix_stack_push(obj.originInvMat);
	obj.transformOriginMat=matrix_stack_top();
	matrix_stack_clear();
}