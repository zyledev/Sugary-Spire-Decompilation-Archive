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
		scr_enemy_kick();
		break;
	case 103:
		scr_enemy_kick();
		break;
}
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
if (((obj_player.x > (x - 80) && obj_player.x < (x + 80)) && (y <= (obj_player.y + 100) && y >= (obj_player.y - 100))) && bombreset == 0)
{
	if (state = 94)
	{
		movespeed = 0;
		bombreset = 100;
		image_index = 0;
		sprite_index = spr_crackerkicker_kick;
		image_xscale = -sign(x - obj_player.x);
		state = 102;
	}
}
if (flash && alarm[2] <= 0)
	alarm[2] = 0.15 * room_speed;
if (state != 101)
	depth = 0;
if (state != 98)
	thrown = false;
if (!boundbox)
{
	with (instance_create(x, y, obj_baddiecollisionbox))
	{
		sprite_index = other.sprite_index;
		mask_index = other.sprite_index;
		baddieID = other.id;
		other.boundbox = 1;
	}
}
if (state = 96 || state = 94)
	movespeed = 1;
if ((obj_player.x > (x - 400) && obj_player.x < (x + 400)) && (y <= (obj_player.y + 60) && y >= (obj_player.y - 60)))
{
	if (state != 103 && obj_player.state = 83)
	{
		state = 103;
		sprite_index = scaredspr;
		if (x != obj_player.x)
			image_xscale = -sign(x - obj_player.x);
		movespeed = 0;
		hsp = 0;
		image_index = 0;
	}
}
