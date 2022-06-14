/// @description Insert description here
// You can write your code in this editor
if hp <= 0 {
		
		state = enemyStateDeath
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



faceDirectionRunning()

chooseTarget()
enemyCollision()
script_execute(state)

chaseSpeed = 3

checkDimension(currentDimension)
