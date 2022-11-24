/// @description Insert description here
// You can write your code in this editor


vertex_format_begin()
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_color();
global.vFormat=vertex_format_end();

//voxel=vertex_create_cube(vFormat,1);


vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_color();
vertex_format_add_texcoord();
global.vFormatTex=vertex_format_end();

z=0;
dx=0;
dy=0;
camX=0;
camY=0;
camZ=0;
camDist=5;
fov_y=80;
mx=mouse_x/room_width*360-100;
my=mouse_y/room_height*180-90;
x=10;
y=10;
z=10;


global.viewMat=matrix_build_lookat(camDist*dcos(mx)*dcos(my),camDist*dsin(mx)*dcos(my),camDist*dsin(my),0,0,0,0,0,1);
global.projMat=matrix_build_projection_perspective_fov(fov_y,16/9,0.1,10000);




