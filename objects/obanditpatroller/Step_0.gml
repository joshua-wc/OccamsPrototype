/// @description Insert description here
// You can write your code in this editor

	
if hp <= 0 {
		
		patrollerState = enemyPatrollerStateDeath
	}


attackConfig = 
{
x : x + attackOffset,
y : y,
layer : layer,
dimension : currentDimension,
originDimension : originDimension,
number : number
}



chooseTarget()

script_execute(patrollerState)

checkDimension(currentDimension)

