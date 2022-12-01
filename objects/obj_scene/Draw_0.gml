/// @description Insert description here
// You can write your code in this editor

gpu_set_ztestenable(true);
matrix_set(matrix_view,global.viewMat);
matrix_set(matrix_projection,global.projMat);

draw_clear(c_aqua);




//surface_set_target_ext(0,application_surface);
//surface_set_target(application_surface);
shader_set(shd_plane);
shader_set_uniform_matrix_array(planeTransformUniform,plane.transformMat);
texture_set_stage(texUniform,surface_get_texture(global.intersectMask));
//vertex_submit(plane.vertexFrame,pr_trianglelist,surface_get_texture(obj_intersect.intersectMask));
vertex_submit(plane.vertexFrame,pr_trianglelist,surface_get_texture(global.world_surface));
//vertex_submit(plane.vertexFrame,pr_trianglelist,-1);
//vertex_submit(plane.vertexFrame,pr_trianglelist,sprite_get_texture(spr_voxTex,0));
shader_reset();
//surface_reset_target();
gpu_set_ztestenable(false);


