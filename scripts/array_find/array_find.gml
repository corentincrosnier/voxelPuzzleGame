// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function array_find(arr, value){
	var searchArr=is_array(value);
	for(var i=0; i<array_length(arr); i++){
		if((searchArr && array_equals(arr[i],value)) || (!searchArr && arr[i]==value)){
			return i;
		}
	}
	return -1;
}