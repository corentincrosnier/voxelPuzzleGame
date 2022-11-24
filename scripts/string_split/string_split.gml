// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function string_split(s,d){

var rl = ds_list_create();
var p = string_pos(d, s), o = 1;
var dl = string_length(d);
if (dl) while (p) {
    ds_list_add(rl, string_copy(s, o, p - o));
    o = p + dl;
    p = string_pos_ext(d, s, o);
}
ds_list_add(rl, string_delete(s, 1, o - 1));
// create an array and store results:
var rn = ds_list_size(rl);
var rw = array_create(rn);
for (p = 0; p < rn; p++) rw[p] = rl[|p];
ds_list_destroy(rl);
return rw;

}