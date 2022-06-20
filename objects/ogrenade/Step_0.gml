/// @description Insert description here
// You can write your code in this editor

if (path_position = 1 and travelling) {
	travelling = false
	path_delete(path)
}
		
if (!path_exists(path)) {
	image_xscale -= 0.1
	image_yscale -= 0.1
}
		
if (image_xscale <= 0 or image_yscale <= 0) {
		instance_create_layer(x,y,layer,explosion)
		instance_destroy()	
}
