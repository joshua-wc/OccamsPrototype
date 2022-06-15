// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function faceDirectionRunning(){

	if (direction <= 90 or direction >= 270)
	{
		attackOffset = 18
		image_xscale = -1
		moveDirection[0] = 1
	
	} else if (direction >= 91 and direction <= 269)
	{
		attackOffset = -18
		image_xscale = 1
		moveDirection[0] = -1
	}
	
	if (direction >=0 or direction <= 180)
	{
		moveDirection[1] = -1
	} else if (direction >= 181 or direction <= 360)
	{
		moveDirection[1] = 1	
	}

}

function faceDirectionChasing(){
	var targetPos = point_direction(x, y, oPlayer.x, oPlayer.y)
	if (targetPos <= 90 || targetPos >= 270)
	{
		attackOffset = 18
		image_xscale = -1
	} else {
		attackOffset = -18
		image_xscale = 1
	}
}