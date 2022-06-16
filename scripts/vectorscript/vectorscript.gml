// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function vectorToSpeed(vector) {
	
	vectorCollision(vector)
	
	x = vector[0]
	y = vector[1]
}

function setVector(currentVector, newVector){
	currentVector[@0] = newVector[0]
	currentVector[@1] = newVector[1]
	
}

function addVector(currentVector, newVector){
	currentVector[@0] += newVector[0]
	currentVector[@1] += newVector[1]
	
}

function subtractVector(currentVector, newVector){
	currentVector[@0] -= newVector[0]
	currentVector[@1] -= newVector[1]
}

function multiplyVector(currentVector, scalar){
	currentVector[@0] *= scalar
	currentVector[@1] *= scalar
}

function divideVector(currentVector, scalar){
	currentVector[@0] /= scalar
	currentVector[@1] /= scalar
}

function getVectorMagnitude(vector) {
	return sqrt((vector[0] * vector[0]) + (vector[1] * vector[1]))
}

function normalizeVector(vector) {
	if ((vector[0] != 0) || (vector[1] != 0))
	{
		var _factor = 1/getVectorMagnitude(vector)
		vector[@0] = _factor * vector[0]
		vector[@1] = _factor * vector[1]
	}
}

function setVectorMagnitude(vector, scalar) {
	normalizeVector(vector)
	multiplyVector(vector, scalar)
}

function limitVectorMagnitude(vector, limit) {
	if (getVectorMagnitude(vector) > limit)
	{
		setVectorMagnitude(vector, limit)
	}
}

function negateVector(vector){
	vector[@0] = -vector[0]
	vector[@1] = -vector[1]
}

function getVectorDirection(vector){
	return point_direction(0,0,vector[0],vector[1])
}

function vectorLengthDir(length, dir){
	var newVector
	newVector[0] = lengthdir_x(length, dir)
	newVector[1] = lengthdir_y(length, dir)
	return newVector
}