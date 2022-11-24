/// @description Insert description here
// You can write your code in this editor



shader_set(shd_voxel);
shader_set_uniform_matrix_array(objectTransformUniform,object.transformMat);
vertex_submit(object.vertexFrame,pr_trianglelist,-1);
shader_reset();




