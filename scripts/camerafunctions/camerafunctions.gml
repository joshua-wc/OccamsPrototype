// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function cameraSetup(){
	
view_enabled = true
view_visible[0] = true

view_visible[1] = false
view_xport[1] = oPlayer.x + 100
view_yport[1] = oPlayer.y
view_wport[1] = 150
view_hport[1] = 150

view_xport[0] = 0
view_yport[0] = 0
view_wport[0] = 1360
view_hport[0] = 768

view_camera[0] = camera_create_view(0,0,view_wport[0] * 0.6, view_hport[0] * 0.6, 0, oPlayer, -1, -1, 400, 250)
view_camera[1] = camera_create_view(0,0,view_wport[1], view_hport[1])

// Set window to correct size

var _dwidth = display_get_width();
var _dheight = display_get_height();
var _xpos = (_dwidth / 2) - 680;
var _ypos = (_dheight / 2) - 384;
window_set_rectangle(_xpos, _ypos, 1360, 768);

surface_resize(application_surface, 1360, 768)

global.previewSurface = surface_create(150, 150)
view_surface_id[1] = global.previewSurface


/*global.mainCam = view_camera[0];
follow = oPlayer;
viewWidthHalf = camera_get_view_width(global.mainCam) * 0.5;
viewHeightHalf = camera_get_view_height(global.mainCam) * 0.5;
xTo = xstart;
yTo = ystart;*/
}

function cameraStep(){
	
	//Update destination
/*if (instance_exists(follow))
{
    xTo = follow.x;
    yTo = follow.y;    
}

//Update Object Position
x += (xTo - x) / 15;
y += (yTo - y) / 15;

//Keep camera center inside room
x = clamp(x, viewWidthHalf, room_width-viewWidthHalf);
y = clamp(y, viewHeightHalf, room_height-viewHeightHalf);



camera_set_view_pos(global.mainCam,x - viewWidthHalf, y - viewHeightHalf);*/
}

function cameraRoomStart(){
	
	if (instance_exists(oPlayer))
{
    x = oPlayer.x;
    y = oPlayer.y;
}
}