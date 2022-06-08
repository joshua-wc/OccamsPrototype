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

function patrolRandomPath() {
	
	newPath = path_add()
	
	var pointCount = irandom_range(2, 5)
	
	var currentX = x
	var currentY = y
	
	for (var i = 0; i <= pointCount; i++)
	{
		pointX = irandom_range(0, room_width)
		pointY = irandom_range(0, room_height)
		
		obstacle = collision_line(currentX,currentY,pointX,pointY, oRockMovable, false, false)
	
	if obstacle != noone 
	{
		pointX = obstacle.x + (obstacle.sprite_width / 2)
		pointY = obstacle.y + (obstacle.sprite_height / 2)
	}
	
	
	path_add_point(newPath, pointX, pointY, 100)
	
	currentX = pointX
	currentY = pointY
	}
	
	return newPath
}

/*function randomGridPath() {
	
	newPath = path_add()
	
	targetX = irandom_range(x - 200, x + 200)
	targetY = irandom_range(y - 200, y + 200)
	
	mp_grid_path(oGridSetup.grid, newPath, x, y, targetX, targetY, 1)
	
	path_start(newPath, 2, path_action_stop, 1)
	
	return newPath
	
}