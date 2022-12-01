

function voxel_frame_get_barycentre(frame){
	var baryX=0;
	var baryY=0;
	var baryZ=0;
	var l=array_length(frame);
	for(var i=0; i<l; i++){
		baryX+=frame[i][0];
		baryY+=frame[i][1];
		baryZ+=frame[i][2];
	}
	return [baryX/l,baryY/l,baryZ/l];
}