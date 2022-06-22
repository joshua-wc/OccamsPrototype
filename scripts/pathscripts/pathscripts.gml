// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function patrolRectangle() {
	var newPath = path_add()
	path_add_point(newPath, x, y, 100)
	path_add_point(newPath, x - 200, y, 100)
	path_add_point(newPath, x - 200, y + 100, 100)
	path_add_point(newPath, x, y + 100, 100)
	path_add_point(newPath, x, y, 100)
	
	path_start(newPath, walkSpeed, path_action_restart, 1)
}

function throwPath(targetX, targetY, arcPeak) {
	
	var newPath = path_add()
	path_add_point(newPath, x, y, 75)
	path_add_point(newPath, targetX, targetY, 100)


	path_insert_point(newPath, 1, (targetX - x) / 2 + x,  (targetY - y) / 2 + y + arcPeak, 75)
	
	path_set_closed(newPath, false)
	path_set_kind(newPath, 1)
	path_set_precision(newPath, 5)
	
	return newPath
}

function randomGridPath() {
	
	path_delete(newPath)
	newPath = path_add()
		
		var targetX = 0
		var targetY = 0
		
		repeat(20)
		{
			targetX = irandom_range(x - 200, x + 200)
			targetY = irandom_range(y - 200, y + 200)
			
			if (!tilemap_get_at_pixel(oController.mapId, targetX, targetY))
			{
				break;
			}
		}
	
	
	
	mp_grid_path(oController.grid, newPath, x, y, targetX, targetY, 1)
	
	path_start(newPath, walkSpeed, path_action_stop, 1)
		
	
}

/* Old random path code, keeping in case the collision check is useful
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
}*/
