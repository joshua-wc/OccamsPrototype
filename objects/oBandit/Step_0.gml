/// @description Insert description here
// You can write your code in this editor

if hspeed > 0 {
	image_xscale = -1
	attackOffset = 18
} else {
	image_xscale = 1
attackOffset = -18	
}
	
if hp <= 0 {
		
		banditState = enemyStateDeath
	}


script_execute(banditState)

checkDimension(currentDimension)
chooseTarget()