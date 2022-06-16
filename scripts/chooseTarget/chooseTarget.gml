// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function chooseTarget(){
	

	
	for (var i = 0; i < instance_number(oBandit); i++;)
{
    enemies[i] = instance_find(oBandit,i);
}

for (var i = 0; i < array_length(enemies); i++) {
	if instance_exists(enemies[i]) and enemies[i].currentDimension == currentDimension and enemies[i].originDimension != originDimension and point_distance(x, y, enemies[i].x, enemies[i].y) <= aggroRange {
		target = enemies[i]
		show_debug_message("I've finally found you")
	}
}

if !instance_exists(target) {
	target = oPlayer
}

if target != oPlayer and point_distance(x, y, target.x, target.y) >= point_distance(x, y, oPlayer.x, oPlayer.y) and currentDimension == oPlayer.currentDimension target = oPlayer



}