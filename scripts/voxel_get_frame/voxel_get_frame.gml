// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function voxel_get_frame(voxelMap){
	var ret=array_create(0);
	for(var i=0; i<array_length(voxelMap);i++){
		for(var j=0;j<array_length(voxelMap[0]);j++){
			for(var k=0;k<array_length(voxelMap[0][0]);k++){
				if(voxelMap[i][j][k]==1 && voxel_is_visible(voxelMap,i,j,k)){
					array_push(ret,[i,j,k]);
				}
			}
		}
	}
	return ret;
}