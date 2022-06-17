/// @description Insert description here
// You can write your code in this editor

// Camera setup

cam = view_camera[0];
follow = oPlayer;
viewWidthHalf = camera_get_view_width(cam) * 0.5;
viewHeightHalf = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;

// Grid setup

grid = mp_grid_create(0,0, room_width/16, room_height/16, 16, 16)

var tilesW = room_width / 16
var tilesH = room_height / 16

var layerId = layer_get_id("Dimension_" + string(oPlayer.currentDimension) + "_Col")
mapId = layer_tilemap_get_id(layerId)

for (var i = 0; i < tilesW; i++)
{
	for (var j = 0; j < tilesH; j++)
	{
		
		var tilesToCheck = tilemap_get(mapId, i, j)
		if tilesToCheck != 0
		{
			mp_grid_add_cell(grid, i, j)
		}
			
	}
}

