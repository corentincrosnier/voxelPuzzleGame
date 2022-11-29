/// @description Insert description here
// You can write your code in this editor

gpu_set_ztestenable(true);





matrix_set(matrix_view,global.viewMat);
matrix_set(matrix_projection,global.projMat);

draw_clear(c_aqua);






//matrix_set(matrix_view,matrix_build_lookat(0,0,0,0,0,0,0,0,1));
//matrix_set(matrix_projection,matrix_build_projection_ortho(1280,720,0,1000));
shader_set(shd_intersect);
shader_set_uniform_f_array(planeTransformUniformInt,plane.transformMat);
shader_set_uniform_f_array(objectTransformUniformInt,invert(obj_player.object.transformMat));
//shader_set_uniform_f_array(objectTransformUniformInt,object.transformMat);
//shader_set_uniform_i(voxelMapUniform,buffer);
shader_set_uniform_i(sizeXUniform,voxelMapXsize);
shader_set_uniform_i(sizeYUniform,voxelMapYsize);
shader_set_uniform_i(sizeZUniform,voxelMapZsize);
shader_set_uniform_i(surfSizeUniform,surfSize);
texture_set_stage(voxelMapUniform,surface_get_texture(voxelMapSurf));

shader_set_uniform_f_array(intersectSizeUniform,[intersectW,intersectW]);
//shader_set_uniform_f(AUniform,0.9);
//shader_set_uniform_f_array(BUniform,[1,0,0]);
//shader_set_uniform_f_array(CUniform,[1,0,0,1]);
surface_set_target(intersectMask);
//draw_surface(intersectMask,0,0);

draw_surface(intersectMask_,0,0);
surface_reset_target();
shader_reset();

draw_surface(intersectMask,0,0);

/*
//surface_set_target_ext(0,application_surface);
surface_set_target(application_surface);
shader_set(shd_plane);
shader_set_uniform_matrix_array(planeTransformUniform,plane.transformMat);
//texture_set_stage(texUniform,surface_get_texture(intersectMask));
vertex_submit(plane.vertexFrame,pr_trianglelist,surface_get_texture(intersectMask));
shader_reset();
surface_reset_target();
//surface_reset_target();
*/



/*
shader_set(shd_intersect);
//shader_set_uniform_matrix_array(planeTransformUniformInt,plane.transformMat);
//shader_set_uniform_matrix_array(objectTransformUniformInt,invert(object.transformMat));
//shader_set_uniform_f_array(voxelMapUniform,voxelMap1d);
//shader_set_uniform_f_array(voxelSizeUniform,[voxelMapXsize,voxelMapYsize,voxelMapZsize]);
intersectTex=surface_get_texture(intersectMask);
texture_set_stage(intersectMaskUniform,intersectTex);
surface_set_target(intersectMask);
//draw_surface(intersectMask,0,0);
surface_reset_target();
shader_reset();*/


//matrix_set(matrix_world,matrix_build_identity());




