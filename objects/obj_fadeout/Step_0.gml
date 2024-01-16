if (fadealpha > 1)
{
    fadein = true
    if instance_exists(obj_player)
    {
        if (room != obj_player.targetRoom)
            room_goto(obj_player.targetRoom)
    }
}
if (fadein == false)
    fadealpha += 0.1
else if (fadein == true)
    fadealpha -= 0.1
if instance_exists(obj_player)
{
    with (obj_player)
    {
        if (other.fadein && (obj_player.state = 71 || obj_player.state = 57) && (place_meeting(x, y, obj_door) || place_meeting(x, y, obj_startgate)))
        {
            state = 54
            image_index = 0
        }
        if (other.fadein && obj_player.state = 71 && (obj_player.sprite_index = spr_player_downpizzabox || obj_player.sprite_index = spr_player_uppizzabox))
            state = 60
    }
}
if (fadein && fadealpha < 0)
    instance_destroy();
