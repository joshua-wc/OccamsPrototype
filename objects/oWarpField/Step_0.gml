/// @description Insert description here
// You can write your code in this editor


if image_xscale < 1 and expiry > 0 or image_yscale < 1 and expiry > 0 {
	image_xscale += 0.08
	image_yscale += 0.08
}

if image_xscale >= 1 or image_yscale >= 1 {
	if (!hitboxSpawned) {
		hitbox = instance_create_layer(x, y, layer, oWarpHitbox)
		hitboxSpawned = true
	}
	
	expiry -= 1
}

if expiry <= 0 {
	image_xscale -= 0.08
	image_yscale -= 0.08
	
	if image_xscale <= 0 or image_yscale <= 0 {
		instance_destroy(hitbox)
		instance_destroy(self)
	}
}