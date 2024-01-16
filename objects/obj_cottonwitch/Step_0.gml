switch (state)
{
	case 86:
		scr_enemy_idle();
		break;
	case 88:
		scr_enemy_charge();
		break;
	case 90:
		scr_enemy_turn();
		break;
	case 94:
		scr_enemy_walk();
		break;
	case 96:
		scr_enemy_land();
		break;
	case 97:
		scr_enemy_hit();
		break;
	case 98:
		scr_enemy_stun();
		break;
	case 89:
		scr_pizzagoblin_throw();
		break;
	case 101:
		scr_enemy_grabbed();
		break;
	case 102:
		scr_enemy_scared();
		break;
	case 9999999:
		scr_enemy_inhaled();
		break;
}
if (point_in_circle(x, y, obj_player.x + (75 * obj_player.xscale), obj_player.y, 125) && obj_player.inhaling && state != 9999999)
	state = 9999999;
if (state = 98 && stunned > 40 && !birdcreated)
{
	birdcreated = true;
	with (instance_create(x, y, obj_enemybird))
		ID = other.id;
}
if (state != 98)
	birdcreated = false;
if (bombreset > 0)
	bombreset--;
if (((obj_player.x > (x - 400) && obj_player.x < (x + 400)) && (y <= (obj_player.y + 60) && y >= (obj_player.y - 60))) && obj_player.state != 100 && obj_player.state != 110 && obj_player.state != 71 && obj_player.state != 111 && obj_player.state != 112)
{
	if (state != 89 && bombreset = 0 && obj_player.state != 100)
	{
		if (state = 94 || state = 86)
		{
			image_index = 0;
			state = 89;
			if (x != obj_player.x)
				image_xscale = -sign(x - obj_player.x);
			sprite_index = spr_throw;
		}
	}
}
if (flash && alarm[2] <= 0)
	alarm[2] = 0.15 * room_speed;
if (state != 101)
	depth = 0;
if (state != 98)
	thrown = false;
if (!boundbox && state != 9999999)
{
	with (instance_create(x, y, obj_baddiecollisionbox))
	{
		sprite_index = other.sprite_index;
		mask_index = other.sprite_index;
		baddieID = other.id;
		other.boundbox = 1;
	}
}
if ((obj_player.x > (x - 400) && obj_player.x < (x + 400)) && (y <= (obj_player.y + 60) && y >= (obj_player.y - 60)))
{
	if (state != 102 && (obj_player.state = 83 || obj_player.state = 999))
	{
		state = 102;
		sprite_index = scaredspr;
		if (x != obj_player.x)
			image_xscale = -sign(x - obj_player.x);
		movespeed = 0;
		hsp = 0;
		image_index = 0;
	}
}
