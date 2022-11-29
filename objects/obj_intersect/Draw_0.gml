/// @description Insert description here
// You can write your code in this editor


//matrix_set(matrix_projection,matrix_build_projection_ortho(intersectW,intersectH,0,1000));

surface_set_target(intersectMask);
shader_set(shd_intersect);
shader_set_uniform_f_array(planeTransformUniformInt,obj_scene.plane.transformMat);
shader_set_uniform_f_array(objectTransformUniformInt,invert(obj_player.object.transformMat));
shader_set_uniform_i(sizeXUniform,voxelMapXsize);
shader_set_uniform_i(sizeYUniform,voxelMapYsize);
shader_set_uniform_i(sizeZUniform,voxelMapZsize);
shader_set_uniform_i(surfSizeUniform,surfSize);
texture_set_stage(voxelMapUniform,surface_get_texture(voxelMapSurf));
shader_set_uniform_f_array(intersectSizeUniform,[intersectW,intersectW]);

//draw_surface(intersectMask,0,0);
vertex_submit(_buffer,pr_trianglelist,-1);
shader_reset();
surface_reset_target();

//surface_set_target(application_surface);
draw_surface(intersectMask,0,0);
//surface_reset_target();


