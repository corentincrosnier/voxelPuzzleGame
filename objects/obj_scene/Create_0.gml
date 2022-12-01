/// @description Insert description here
// You can write your code in this editor


plane={
	vertexFrame: vertex_get_plane(global.vFormatTex),
	position: [0,0,-1],
	rotation: [0,0,0],
	scale: [room_width/2,room_height/2,1],
	transformMat: 0,
	origin: [0,0,0]
};
plane.transformMat=matrix_build(plane.position[0],plane.position[1],plane.position[2],
								plane.rotation[0],plane.rotation[1],plane.rotation[2],
								plane.scale[0],plane.scale[1],plane.scale[2]);
planeTransformUniform=shader_get_uniform(shd_plane,"objectTransform");
texUniform=shader_get_sampler_index(shd_plane,"tex");


