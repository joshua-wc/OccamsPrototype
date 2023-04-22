// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function seekForce(vector){
	subtractVector(vector, position)
	setVectorMagnitude(vector, maxSpeed)
	subtractVector(vector, velocity)
	limitVectorMagnitude(vector, maxForce)
	return vector
}

function fleeForce(vector){
	subtractVector(vector, position)
	setVectorMagnitude(vector, maxSpeed)
	negateVector(vector)
	subtractVector(vector, velocity)
	limitVectorMagnitude(vector, maxForce)
	return vector
}

function pursueForce(){
	var targetPosition = [target.x, target.y]
	var targetVelocity = [oPlayer.x_speed, oPlayer.y_speed]
	multiplyVector(targetVelocity, 30)
	addVector(targetVelocity, targetPosition)
	return seekForce(targetVelocity)
	
}

function evadeForce(){
	var targetPosition = [target.x, target.y]
	var targetVelocity = [oPlayer.x_speed, oPlayer.y_speed]
	multiplyVector(targetVelocity, 30)
	addVector(targetVelocity, targetPosition)
	return fleeForce(targetVelocity)
	
}

function avoidForce(targetVector){
		var col = vectorCollision(targetVector)
		return fleeForce(col)

}

function arriveForce(vector, slowingRadius){
	subtractVector(vector, position)
	var dist = getVectorMagnitude(vector)
	if (dist > slowingRadius)
	{
		setVectorMagnitude(vector, maxSpeed)
	} else {
		setVectorMagnitude(vector, maxSpeed * (dist / slowingRadius))
	}
	
	subtractVector(vector, velocity)
	limitVectorMagnitude(vector, maxForce)
	return vector
}