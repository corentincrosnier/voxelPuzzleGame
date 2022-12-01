/// @description Insert description here
// You can write your code in this editor



//surface_set_target(intersectMask);
surface_set_target(global.world_surface);
draw_clear_alpha(c_black,0);
shader_set(shd_intersect);
shader_set_uniform_f_array(planeTransformUniformInt,obj_scene.plane.transformMat);
shader_set_uniform_f_array(objectTransformUniformInt,invert(obj_player.object.transformOriginMat));
shader_set_uniform_i(sizeXUniform,voxelMapXsize);
shader_set_uniform_i(sizeYUniform,voxelMapYsize);
shader_set_uniform_i(sizeZUniform,voxelMapZsize);
shader_set_uniform_i(surfSizeUniform,surfSize);
texture_set_stage(voxelMapUniform,surface_get_texture(voxelMapSurf));
shader_set_uniform_f_array(intersectSizeUniform,[global.intersectW,global.intersectW]);

vertex_submit(_buffer,pr_trianglelist,-1);
shader_reset();
surface_reset_target();





/*
surface_set_target(global.world_surface);
//draw_clear_alpha(c_black,0);
draw_sprite(spr_collMask,0,obj_player.object.position[0]+room_width/2,obj_player.object.position[1]+room_height/2);
//draw_sprite(spr_collMask,0,room_width/2,room_height/2);
show_debug_message(obj_player.object.position[0]+room_width/2);
show_debug_message(obj_player.object.position[1]+room_height/2);
surface_reset_target();
*/