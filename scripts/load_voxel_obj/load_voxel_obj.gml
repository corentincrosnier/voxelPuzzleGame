// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_voxel_obj(fileName,xx,yy,zz,size){
	var file=file_text_open_read(working_directory+fileName);
	if(file==-1)
		return -1;
	var arr=array_create(0);
	while(!file_text_eof(file)){
		var line=file_text_readln(file);
		var values=string_split(line,",");
		var color=make_color_rgb(real(values[3]),real(values[4]),real(values[5]));
		array_push(arr,[real(values[0]),real(values[1]),real(values[2]),color])
	}
	
	return arr;
}
