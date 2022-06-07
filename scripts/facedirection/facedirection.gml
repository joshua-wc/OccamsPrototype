// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function faceDirectionRunning(){

	if hspeed > 0 {
			image_xscale = -1
			attackOffset = 18
	} else {
			image_xscale = 1
			attackOffset = -18	
			}
	}

function faceDirectionPath() {

	
		
	if x > path_get_x(path_index, path_position-path_speed/path_get_length(path_index)) {

			image_xscale = 1
			attackOffset = 18
	} else {
			image_xscale = -1
			attackOffset = -18	
			}


}