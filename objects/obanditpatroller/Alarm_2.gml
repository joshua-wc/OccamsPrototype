/// @description path regeneration
// You can write your code in this editor

if patrollerState = enemyPatrollerStateIdle
{
	randomGridPath()
	stopped = false	
}

if patrollerState = enemyPatrollerStateChasing
{
	path_delete(newPath)
	newPath = path_add()
	
	targetX = oPlayer.x
	targetY = oPlayer.y
	
	mp_grid_path(oGridSetup.grid, newPath, x, y, targetX, targetY, 1)
	path_start(newPath, 3, path_action_stop, false)
	alarm_set(2, 15)
}
	

