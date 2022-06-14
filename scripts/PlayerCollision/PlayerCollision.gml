function PlayerCollision(){
if (sign(x_speed ==-1))
{
    x -= x mod TILE_SIZE
    }

var _collision = false;


//Horizontal Tiles
if (tilemap_get_at_pixel(collisionMap, x + x_speed, y))
{
    x -= x mod TILE_SIZE
    if (sign(x_speed) == 1) x += TILE_SIZE - 1;
    x_speed = 0;
    _collision = true;
}

if (place_meeting(x + x_speed, y, oRockMovable))
{
	rock = instance_place(x + x_speed, y, oRockMovable)
	
	if (rock.colliding)
	{
		 x -= x mod TILE_SIZE
    if (sign(x_speed) == 1) x += TILE_SIZE - 1;
    x_speed = 0;
    _collision = true;
	} else {
		rock.x += x_speed / 2
		x_speed /= 2
		y_speed /= 2
	}
}



//Horizontal Move Commit
x += x_speed;




//Vertical Tiles
if (tilemap_get_at_pixel(collisionMap, x, y + y_speed))
{
    y -= y mod TILE_SIZE
    if (sign(y_speed) == 1) y += TILE_SIZE - 1
    y_speed = 0;
    _collision = true;
}

if (place_meeting(x, y + y_speed, oRockMovable))
{
	rock = instance_place(x, y + y_speed, oRockMovable)
	
	if (rock.colliding)
	{
		 x -= x mod TILE_SIZE
    if (sign(y_speed) == 1) x += TILE_SIZE - 1;
    y_speed = 0;
    _collision = true;
	} else {
		rock.y += y_speed / 2
		x_speed /= 2
		y_speed /= 2
	}
}


//Vertical Move Commit
y += y_speed;



return _collision

}

function enemyCollision()
{
	
}