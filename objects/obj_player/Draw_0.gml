/// @description Insert description here
// You can write your code in this editor



//matrix_set(matrix_view,global.viewMat);
//matrix_set(matrix_projection,global.projMat);

shader_set(shd_voxel);
//matrix_stack_push(object.transformMat);
//matrix_stack_push(object.origin);
shader_set_uniform_matrix_array(objectTransformUniform,object.transformOrigin);
//matrix_stack_clear();
vertex_submit(object.vertexFrame,pr_trianglelist,-1);
shader_reset();


