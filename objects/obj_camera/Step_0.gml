/// @description Insert description here
// You can write your code in this editor


var cx,cy,mx,my;
cx=window_get_width()/2;
cy=window_get_height()/2;
mx=window_mouse_get_x()-cx;
my=window_mouse_get_y()-cy;
window_mouse_set(cx,cy);

dx=dx+0.1*mx;
dx=dx+0.1*mx;
dy=clamp(dy-0.1*my,-89,89);


var fd=keyboard_check(ord("Z"))-keyboard_check(ord("S"));
var sd=keyboard_check(ord("Q"))-keyboard_check(ord("D"));
var ud=keyboard_check(ord("E"))-keyboard_check(ord("A"));

if keyboard_check(vk_escape) game_end();

x+= dcos(dx)*fd+dsin(dx)*sd;
y+= dsin(dx)*fd-dcos(dx)*sd;
z+= ud;

//show_debug_message(string(x)+" "+string(y)+" "+string(z));

global.viewMat=matrix_build_lookat(x,y,z,x+5*dcos(dx)*dcos(dy),y+5*dsin(dx)*dcos(dy),z+5*dsin(dy),0,0,1);
global.projMat=matrix_build_projection_perspective_fov(fov_y,16/9,0.1,10000);




