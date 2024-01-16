can_collide = function()
{
	if (argument0 == undefined)
		argument0 = obj_player;
	switch object_index
	{
		case obj_player:
			return obj_player.state = 83 || obj_player.state = 64;
			break;
		default:
			return false;
			break;
	}
};
depth = -20;
created = 0;
image_speed = 1;
image_alpha = 0.8;
targety = ystart;
vsp = 0;
watersurface = noone;
alpha = 1;
