/// @description Insert description here
// You can write your code in this editor

var explosionGrid = [[x, y], [x + 16, y], [x + 32, y], [x + 48, y],
[x, y + 16], [x+ 16, y + 16], [x+ 32, y + 16], [x + 48, y + 16],
[x, y + 32], [x+ 16, y + 32], [x+ 32, y + 32], [x + 48, y + 32],
[x, y + 48], [x+ 16, y + 48], [x + 32, y + 48], [x + 48, y + 48]]

var layerId = layer_get_id("Dimension_" + string(dimension) + "_BG")
var tilemapId = layer_tilemap_get_id(layerId)

for (var i = 0; i < array_length(explosionGrid); i++) {
	var explosionCell = [explosionGrid[i][0], explosionGrid[i][1]]
	
	if (tilemap_get_at_pixel(tilemapId, explosionCell[0], explosionCell[1])) {

		var tileX = tilemap_get_cell_x_at_pixel(tilemapId, explosionCell[0], explosionCell[1])
		var tileY = tilemap_get_cell_y_at_pixel(tilemapId, explosionCell[0], explosionCell[1])
		var tile = tilemap_get(tilemapId, tileX, tileY)
		var data = tile_set_empty(tile)
		tilemap_set(tilemapId, data, tileX, tileY)

	}

}