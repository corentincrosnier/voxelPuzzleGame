/// @description Insert description here
// You can write your code in this editor





object.position[1]=object.position[1]-0.5;
object.transformMat=matrix_build(object.position[0],object.position[1],object.position[2],
								object.rotation[0],object.rotation[1],object.rotation[2],
								object.scale[0],object.scale[1],object.scale[2]);
matrix_apply_origin(object);
