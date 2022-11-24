// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function voxel_is_visible(arr,i,j,k){
	if(i<array_length(arr)-1){
		if(arr[i+1][j][k]!=1)
			return true;
	}
	else
		return true;
	if(i>0){
		if(arr[i-1][j][k]!=1)
			return true;
	}
	else
		return true;
	if(j<array_length(arr[0])-1){
		if(arr[i][j+1][k]!=1)
			return true;
	}
	else
		return true;
	if(j>0){
		if(arr[i][j-1][k]!=1)
			return true;
	}
	else
		return true;
	if(k<array_length(arr[0][0])-1){
		if(arr[i][j][k+1]!=1)
			return true;
	}
	else
		return true;
	if(k>0){
		if(arr[i][j][k-1]!=1)
			return true;
	}
	else
		return true;
	return false;
}