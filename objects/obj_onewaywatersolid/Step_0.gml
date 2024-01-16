if (obj_player.state != 63 && obj_player.state != 83 && obj_player.state != 117)
{
	instance_destroy();
	if (instance_exists(obj_watertop))
		obj_watertop.created = false;
	if (instance_exists(obj_minecartrail))
		obj_minecartrail.created = false;
}
