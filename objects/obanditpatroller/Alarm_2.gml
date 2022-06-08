/// @description path regeneration
// You can write your code in this editor

if patrollerState = enemyPatrollerStateIdle
{
		
		path_delete(newPath)
		newPath = path_add()
	
	targetX = irandom_range(x - 200, x + 200)
	targetY = irandom_range(y - 200, y + 200)
	
	mp_grid_path(oGridSetup.grid, newPath, x, y, targetX, targetY, 1)
	
	path_start(newPath, 2, path_action_stop, 1)
		draw_path(newPath,x,y,1)
		alarm_set(2, 30)
}

if patrollerState = enemyPatrollerStateChasing
{
	path_delete(chasePath)
	chasePath = path_add()
	
	targetX = oPlayer.x
	targetY = oPlayer.y
	
	mp_grid_path(oGridSetup.grid, chasePath, x, y, targetX, targetY, 1)
	path_start(chasePath, 3, path_action_stop, false)
	alarm_set(2, 15)
}
	

