// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function seekForce(vector){
	subtractVector(vector, position)
	setVectorMagnitude(vector, maxSpeed)
	subtractVector(vector, velocity)
	limitVectorMagnitude(vector, maxForce)
	return vector
}