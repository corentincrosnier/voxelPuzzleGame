/// @description Insert description here
// You can write your code in this editor


//matrix_set(matrix_projection,matrix_build_projection_ortho(intersectW,intersectH,0,1000));

/*
with(obj_wall){
	surface_set_target(global.world_surface);
	draw_sprite(sprite_index,0,x,y);
	surface_reset_target();
}*/
/*
//surface_set_target(intersectMask);
surface_set_target(global.world_surface);
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
*/

surface_set_target(global.world_surface);
for(var i=0; i<instance_number(obj_wall); i++){
    var wall=instance_find(obj_wall,i);
	//draw_sprite(wall.sprite_index,0,wall.x,wall.y);
}
draw_circle(100,100,20,false);
surface_reset_target();

/*
surface_set_target(global.world_surface);
gpu_set_blendmode(bm_add);
draw_surface(intersectMask,0,0);
gpu_set_blendmode(bm_normal);
surface_reset_target();*/
//surface_set_target(application_surface);
//draw_surface(intersectMask,0,0);
draw_surface(global.world_surface,0,0);
//surface_reset_target();


