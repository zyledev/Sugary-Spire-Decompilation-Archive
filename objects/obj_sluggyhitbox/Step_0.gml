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
		if (state != 201 && state != 98)
		{
			hitboxcreate = false;
			instance_destroy(other.id);
		}
	}
	if (ID.state = 201)
	{
		hitboxcreate = false;
		instance_destroy(other.id);
	}
}
