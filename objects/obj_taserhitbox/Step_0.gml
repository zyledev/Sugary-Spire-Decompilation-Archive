if (!instance_exists(ID))
	instance_destroy();
if (instance_exists(ID))
{
	x = ID.x;
	y = ID.y;
	image_xscale = ID.image_xscale;
	image_index = ID.image_index;
	with (ID)
	{
		if (object_index == obj_officerwhoopiepie)
		{
			if (state != 86 && state != 94)
			{
				hitboxcreate = false;
				instance_destroy(other.id);
			}
		}
		if (obj_player.state = 83)
		{
			hitboxcreate = false;
			instance_destroy(other.id);
		}
	}
}
