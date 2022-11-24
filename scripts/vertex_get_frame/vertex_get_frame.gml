// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function vertex_get_frame(vformat,arr){
	var color=make_color_rgb(200,200,200);
	color=c_white;
	var vbuffer=vertex_create_buffer();
	vertex_begin(vbuffer,vformat);
	for(var i=0; i<array_length(arr); i++){
		for(var j=0; j<array_length(arr[0]); j++){
			for(var k=0; k<array_length(arr[0][0]); k++){
				if(arr[i][j][k]==1){
					if(i<array_length(arr)-1){
						if(arr[i+1][j][k]!=1)
							vertex_face_Xplus(vbuffer,1,color,i,j,k);
					}
					else
						vertex_face_Xplus(vbuffer,1,color,i,j,k);
					if(i>0){
						if(arr[i-1][j][k]!=1)
							vertex_face_Xmin(vbuffer,1,color,i,j,k);
					}
					else
						vertex_face_Xmin(vbuffer,1,color,i,j,k);
					if(j<array_length(arr[0])-1){
						if(arr[i][j+1][k]!=1)
							vertex_face_Yplus(vbuffer,1,color,i,j,k);
					}
					else
						vertex_face_Yplus(vbuffer,1,color,i,j,k);
					if(j>0){
						if(arr[i][j-1][k]!=1)
							vertex_face_Ymin(vbuffer,1,color,i,j,k);
					}
					else
						vertex_face_Ymin(vbuffer,1,color,i,j,k);
					if(k<array_length(arr[0][0])-1){
						if(arr[i][j][k+1]!=1)
							vertex_face_Zplus(vbuffer,1,color,i,j,k);
					}
					else
						vertex_face_Zplus(vbuffer,1,color,i,j,k);
					if(k>0){
						if(arr[i][j][k-1]!=1)
							vertex_face_Zmin(vbuffer,1,color,i,j,k);
					}
					else
						vertex_face_Zmin(vbuffer,1,color,i,j,k);
				}
			}
		}
	}
	vertex_end(vbuffer);
	vertex_freeze(vbuffer);
	return vbuffer;
}