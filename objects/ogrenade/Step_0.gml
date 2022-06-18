/// @description Insert description here
// You can write your code in this editor
hspeed *= deceleration 

if hspeed <= 0 {
	
	image_xscale -= 0.1
	image_yscale -= 0.1
	
	if image_xscale <= 0 or image_yscale <= 0 {
		instance_create_layer(x,y,layer,explosion)
		instance_destroy()	
	}
}