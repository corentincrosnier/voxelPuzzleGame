/// @description Insert description here
// You can write your code in this editor


var lr=keyboard_check(vk_right)-keyboard_check(vk_left);
var fb=keyboard_check(vk_down)-keyboard_check(vk_up);
var ud=keyboard_check(vk_shift)-keyboard_check(vk_control);

if(lr!=0 || fb!=0 || ud!=0){
	object.position[0]=object.position[0]+fb*translationSpeed;
	object.position[1]=object.position[1]-lr*translationSpeed;
	object.position[2]=object.position[2]+ud*translationSpeed;
	object.transformMat=matrix_build(object.position[0],object.position[1],object.position[2],
									object.rotation[0],object.rotation[1],object.rotation[2],
									object.scale[0],object.scale[1],object.scale[2]);
}



