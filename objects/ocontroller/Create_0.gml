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

createPathGrid(oPlayer.currentDimension)

// Preview Setup

previewSurf = -1

h = 200
w = 300
dimension = oPlayer.currentDimension
previewDimension = oPlayer.nextDimension

previewX = oPlayer.x
previewY = oPlayer.y

shifting = false

refreshPreview()

