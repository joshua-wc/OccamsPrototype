/// @description Insert description here
// You can write your code in this editor

pathCollision(path)

if (path_position = 1 and travelling) {
	travelling = false
	path_delete(path)
}
		
if (!path_exists(path) and !exploding and !hitboxSpawned) {
	image_xscale -= 0.1
	image_yscale -= 0.1
}
		
if (image_xscale <= 0) {
		sprite_index = sExplosion
		exploding = true
		
}

if (exploding) {
	image_xscale += 0.08
	image_yscale += 0.08
}


if (image_xscale > 1 and sprite_index = sExplosion) {

	exploding = false
	
		if (!hitboxSpawned) {
			hitbox = instance_create_layer(x, y, layer, explosion)
			hitboxSpawned = true
		}
	
	expiry -= 1
}

if expiry <= 0 {
	image_xscale -= 0.08
	image_yscale -= 0.08
	
	if image_xscale <= 0 {
		instance_destroy(explosion)
		instance_destroy()
	}
}

