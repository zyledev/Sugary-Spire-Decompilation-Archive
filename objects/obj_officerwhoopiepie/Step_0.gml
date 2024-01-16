switch (state)
{
	case 86:
		scr_enemy_idle();
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
}
if (state = 98 && stunned > 40 && !birdcreated)
{
	birdcreated = true;
	with (instance_create(x, y, obj_enemybird))
		ID = other.id;
}
if (state != 98)
	birdcreated = false;
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
if (hitboxcreate = 0 && (state = 86 || state = 94) && obj_player.state != 83)
{
	hitboxcreate = true;
	with (instance_create(x, y, obj_taserhitbox))
		ID = other.id;
}
if (state = 98)
	hitboxcreate = false;
if (x != obj_player.x)
{
	movespeed = 3;
	image_xscale = -sign(x - obj_player.x);
}
