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




//Vertical Move Commit
y += y_speed;



return _collision

}