var roomname = room_get_name(room);
if (string_letters(roomname) = "steamy" || string_letters(roomname) = "steamysecret")
{
	instance_activate_all();
	room = steamy_1;
	scr_playerreset();
	pause = false;
	obj_player.targetDoor = "A";
}
if (string_letters(roomname) == "entryway")
{
	instance_activate_all();
	room = entryway_1;
	scr_playerreset();
	pause = false;
	obj_player.targetDoor = "A";
}
else
	scr_sound(sound_enemythrow);
