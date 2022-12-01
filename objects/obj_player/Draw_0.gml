/// @description Insert description here
// You can write your code in this editor

gpu_set_ztestenable(true);

matrix_set(matrix_view,global.viewMat);
matrix_set(matrix_projection,global.projMat);

//surface_set_target(application_surface);
shader_set(shd_voxel);
shader_set_uniform_matrix_array(objectTransformUniform,object.transformMat);
vertex_submit(object.vertexFrame,pr_trianglelist,-1);
shader_reset();
//surface_reset_target();
gpu_set_ztestenable(false);





