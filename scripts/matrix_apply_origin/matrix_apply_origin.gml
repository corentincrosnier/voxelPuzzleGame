// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function matrix_apply_origin(obj){
	matrix_stack_clear();
	matrix_stack_push(obj.transformMat);
	matrix_stack_push(obj.origin);
	obj.transformOrigin=matrix_stack_top();
	matrix_stack_clear();
}