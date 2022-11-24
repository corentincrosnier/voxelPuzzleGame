/// @description Insert description here
// You can write your code in this editor




//matrix_set(matrix_view,global.viewMat);
//matrix_set(matrix_projection,global.projMat);

draw_clear(c_aqua);

shader_set(shd_plane);
shader_set_uniform_matrix_array(planeTransformUniform,plane.transformMat);
vertex_submit(plane.vertexFrame,pr_trianglelist,-1);
shader_reset();





shader_set(shd_intersect);
shader_set_uniform_f_array(planeTransformUniformInt,plane.transformMat);
//matrix_stack_push(obj_player.object.transformMat);
//matrix_stack_push(obj_player.object.origin);
shader_set_uniform_f_array(objectTransformUniformInt,invert(obj_player.object.transformMat));
//matrix_stack_clear();
shader_set_uniform_i(sizeXUniform,voxelMapXsize);
shader_set_uniform_i(sizeYUniform,voxelMapYsize);
shader_set_uniform_i(sizeZUniform,voxelMapZsize);
shader_set_uniform_i(surfSizeUniform,surfSize);
texture_set_stage(voxelMapUniform,surface_get_texture(voxelMapSurf));

draw_surface(intersectMask,0,0);
shader_reset();




