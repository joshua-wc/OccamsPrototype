function PlayerCollision(colMap){
if (sign(x_speed ==-1))
{
    x -= x mod TILE_SIZE
    }

var _collision = false;


//Horizontal Tiles
if (tilemap_get_at_pixel(colMap, x + x_speed, y))
{
    x -= x mod TILE_SIZE
    if (sign(x_speed) == 1) x += TILE_SIZE - 1;
    x_speed = 0;
    _collision = true;
}

//Horizontal Move Commit
x += x_speed;




//Vertical Tiles
if (tilemap_get_at_pixel(colMap, x, y + y_speed))
{
    y -= y mod TILE_SIZE
    if (sign(y_speed) == 1) y += TILE_SIZE - 1
    y_speed = 0;
    _collision = true;
}


//Vertical Move Commit
y += y_speed;



return _collision

}

function vectorCollision(vector) {
		var x_speed = x + (vector[0] - x)
	var y_speed = y + (vector[1] - y)
	
	var targetX = 0
	var targetY = 0
	
	
	if (tilemap_get_at_pixel(collisionMap, x_speed, y))
	{
		repeat(10)
		{
			targetX = irandom_range(x - 1, x + 1)
			
			
			if (!tilemap_get_at_pixel(collisionMap, targetX, y))
			{
				break;
			} else 
			{
				targetX = x
			}
		}
		vector[@0] = targetX
	}
	
	if (tilemap_get_at_pixel(collisionMap, x, y_speed))
	{
		repeat(10)
		{
			targetY = irandom_range(y - 0.1, y + 0.1)
			
			if (!tilemap_get_at_pixel(collisionMap, x, targetY))
			{
				break;
			} else 
			{
				targetY = y
			}
		}
		vector[@1] = targetY
	}
}

function pathCollision (path) {
	if !travelling exit
	
	var directionFactorX = xprevious < x ? 1 : -1
	var directionFactorY = yprevious < y ? 1 : -1
	
	var x_speed = x + (maxSpeed * directionFactorX)
	var y_speed = y + (maxSpeed * directionFactorY)
	
	if (tilemap_get_at_pixel(oPlayer.collisionMap, x_speed, y)) {
		travelling = false
		path_delete(path)
	}
	
	if (tilemap_get_at_pixel(oPlayer.collisionMap, x, y_speed)) {
		travelling = false
		path_delete(path)
	}
	
}