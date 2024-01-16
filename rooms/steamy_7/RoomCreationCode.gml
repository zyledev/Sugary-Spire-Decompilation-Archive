var lay_id = layer_get_id("Backgrounds_1");
var back_id = layer_background_get_id(lay_id);
switch (global.panic)
{
	case 0:
		layer_background_sprite(back_id, 45);
		break;
	case 1:
		layer_background_sprite(back_id, 180);
		break;
}
