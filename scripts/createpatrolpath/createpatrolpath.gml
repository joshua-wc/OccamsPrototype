// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function patrolStraightLine(){

	
	obstacle = collision_line(x,y,x-room_width,y, oRockMovable, false, false)
	
	pathEnd = obstacle != noone ? obstacle.x + (obstacle.sprite_width / 2) : x - 250
	
	newPath = path_add()
	path_insert_point(newPath, 0, x, y, 100)
	path_add_point(newPath, pathEnd, y, 100)
	
	return newPath
}