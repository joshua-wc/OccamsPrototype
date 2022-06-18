// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawnObject(object, config){

	var obj = instance_create_layer(config.x, config.y, config.layer, object, config)
	return obj
}

