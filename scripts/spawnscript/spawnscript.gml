// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SpawnHitbox(object, config){
	attack = instance_create_layer(config.x, config.y, config.layer, object, config)
	return attack
}