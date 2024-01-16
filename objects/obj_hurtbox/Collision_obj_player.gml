if (obj_player.state != 105 && obj_player.state != 66)
{
	with (obj_player)
	{
		if ((state = 17 || state = 18 || state = 11) && !cutscene)
		{
		}
		else if (state = 20 && !hurted)
		{
		}
		else if (state = 8)
		{
		}
		else if (state = 6 || state = 7)
		{
		}
		else if (state != 66 && state != 44 && !hurted && !cutscene && state != 65 && state != 109)
		{
			scr_sound(sound_touchspike);
			global.hurtcounter += 1;
			alarm[8] = 60;
			alarm[7] = 120;
			hurted = true;
			if (xscale == other.image_xscale)
				sprite_index = spr_hurtjump;
			else
				sprite_index = spr_hurt;
			movespeed = 8;
			vsp = -5;
			timeuntilhpback = 300;
			if (global.collect > 100)
				global.collect -= 100;
			else
				global.collect = 0;
			if (global.collect != 0)
			{
				instance_create(x, y, obj_pizzaloss);
				instance_create(x, y, obj_pizzaloss);
				instance_create(x, y, obj_pizzaloss);
				instance_create(x, y, obj_pizzaloss);
				instance_create(x, y, obj_pizzaloss);
				instance_create(x, y, obj_pizzaloss);
				instance_create(x, y, obj_pizzaloss);
				instance_create(x, y, obj_pizzaloss);
				instance_create(x, y, obj_pizzaloss);
				instance_create(x, y, obj_pizzaloss);
				instance_create(x, y, obj_pizzaloss);
				instance_create(x, y, obj_pizzaloss);
			}
			else if (obj_player.shotgunAnim)
				obj_player.shotgunAnim = false;
			instance_create(x, y, obj_spikehurteffect);
			state = 66;
			image_index = 0;
			flash = true;
			global.style -= 15;
		}
	}
}
