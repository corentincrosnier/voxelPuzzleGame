/// @description Insert description here
// You can write your code in this editor

if(surface_exists(global.world_surface))
	show_debug_message("exist");

surface_set_target(global.world_surface);
//draw_sprite(sprite_index,0,x,y);
draw_self();
surface_reset_target();


