// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function createPathGrid(_dimensionNum){
	
var tilesW = room_width / 16
var tilesH = room_height / 16


oController.grid = mp_grid_create(0,0, tilesW, tilesH, 16, 16)


var layerId = layer_get_id("Dimension_" + string(_dimensionNum) + "_Col")
oController.mapId = layer_tilemap_get_id(layerId)

for (var i = 0; i < tilesW; i++)
{
	for (var j = 0; j < tilesH; j++)
	{
		
		var tilesToCheck = tilemap_get(oController.mapId, i, j)
		if tilesToCheck != 0
		{
			mp_grid_add_cell(oController.grid, i, j)
		}
			
	}
}

}