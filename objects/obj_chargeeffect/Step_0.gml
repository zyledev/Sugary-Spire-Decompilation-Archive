image_xscale = obj_player.xscale;
if (obj_player.state != 83 && obj_player.state != 117)
	instance_destroy();
if (obj_player.state != 117)
	x = obj_player.x;
else if (obj_player.state = 117)
	x = obj_player.x + (32 * obj_player.xscale);
y = obj_player.y;
depth = obj_player.depth - 6;
if (obj_player.state = 30 || obj_player.sprite_index == spr_player_dive || (obj_player.state = 117 && obj_player.movespeed < 16))
	instance_destroy();
