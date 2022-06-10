/// @description Insert description here
// You can write your code in this editor

// HUD

if (instance_exists(oPlayer)) {
	draw_sprite(sStaminaBack, 1, 8, 64)
	draw_sprite_ext(sStaminaFront, 1, 8, 64, 
	max(0, oPlayer.stamina/oPlayer.maxStamina), 1, 0, c_white, 1)
}

if (instance_exists(oPlayer)) {
	draw_sprite(sHealthBack, 1, 8, 9)
	draw_sprite_ext(sHealthFront, 1, 8, 9, 
	max(0, oPlayer.hp/oPlayer.maxHp), 1, 0, c_white, 1)
}

if (view_visible[1] = true)
{
draw_surface(global.previewSurface, oPlayer.x + 75, oPlayer.y)
}