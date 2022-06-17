/// @description path regeneration
// You can write your code in this editor

if state = enemyPatrollerStateIdle
{
	randomGridPath()
	stopped = false	
}

if state = enemyPatrollerStateChasing
{
	path_delete(newPath)
	newPath = path_add()

	
	mp_grid_path(oController.grid, newPath, x, y, target.x, target.y, 1)
	path_start(newPath, chaseSpeed, path_action_stop, false)
	alarm_set(2, 15)
}
	

