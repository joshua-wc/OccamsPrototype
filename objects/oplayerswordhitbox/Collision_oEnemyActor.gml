/// @description Insert description here
// You can write your code in this editor
if other.currentDimension == dimension {
other.hp -= 1
if other.hp <= 0 {
	other.state = enemyStateDeath
}
instance_destroy()
}