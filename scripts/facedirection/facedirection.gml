// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function faceDirectionRunning(attackInfo){

	if (direction <= 90 or direction >= 270)
	{
		attackOffset = attackInfo
		image_xscale = -1
	} else if (direction >= 91 and direction <= 269)
	{
		attackOffset = attackInfo * -1
		image_xscale = 1
	}

}