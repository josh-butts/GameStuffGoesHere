//Animation

//on gear wall
if (place_meeting(x,y,obj_GearWall))
{
    if (vert_move != 0)
    {
        image_xscale = -vert_move;
        sprite_index = spr_GearMoving;
        image_speed = abs(vsp) * 0.1;
    }
    else 
    {
        sprite_index = spr_Gear;
    }
}
else if (place_meeting(x,y,obj_GearWallLeft))
{
    if(vert_move != 0)
    {
        image_xscale = vert_move;
        sprite_index = spr_GearMoving;
        image_speed = abs(vsp) * 0.1;
    }
    else 
    {
        sprite_index = spr_Gear;
    }
}
else if (place_meeting(x,y,obj_GearWallUp))
{
    if (move != 0)
    {
        image_xscale = -move;
        sprite_index = spr_GearMoving;
        image_speed = abs(hsp) * 0.1;
    }
    else 
    {
        sprite_index = spr_Gear;
    }
}
else if (!place_meeting(x,y,obj_GearWallUp) && !place_meeting(x,y,obj_GearWallLeft)) //off gear wall
{
    if (move != 0) 
    {
        image_xscale = move;
        sprite_index = spr_GearMoving;
        
        //for ice animation
        if (place_meeting(x, y+1, obj_Ice))
        {
            image_speed = 0.45;
        }
        else
        {
            image_speed = abs(hsp) * 0.1;
        }
    }
    else 
    {
        sprite_index = spr_Gear;
    }
}
else 
{
    sprite_index = spr_Gear;
}
