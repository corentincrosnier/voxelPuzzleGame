// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function voxel_load_map(fileName,xx,yy,zz,size){
	var file=file_text_open_read(working_directory+fileName);
	if(file==-1)
		return -1;
	var minX=-1;
	var minY=-1;
	var minZ=-1;
	var maxX=1;
	var maxY=1;
	var maxZ=1;
	
	var arr=array_create(0);
	while(!file_text_eof(file)){
		var line=file_text_readln(file);
		var values=string_split(line,",");
		var X=real(values[0]);
		var Y=real(values[1]);
		var Z=real(values[2]);
		maxX=max(maxX,X);
		maxY=max(maxY,Y);
		maxZ=max(maxZ,Z);
		if(minX==-1)
			minX=X;
		else
			minX=min(minX,X);
		if(minY==-1)
			minY=Y;
		else
			minY=min(minY,Y);
		if(minZ==-1)
			minZ=Z;
		else
			minZ=min(minZ,Z);
		array_push(arr,[X,Y,Z]);
	}
	var sizeX=maxX-minX+1;
	var sizeY=maxY-minY+1;
	var sizeZ=maxZ-minZ+1;
	var ret;
	ret=array_create(sizeX);
	for(var i=0; i<sizeX; i++){
		ret[i]=array_create(sizeY);
		for(var j=0; j<sizeY;j++){
			ret[i][j]=array_create(sizeZ,0);
		}
	}
	//ret[sizeX][sizeY][sizeZ]=0;
	for(var i=0; i<array_length(arr); i++){
		ret[arr[i][0]-minX][arr[i][1]-minY][arr[i][2]-minZ]=1;
	}
	file_text_close(file);
	return ret;
}
