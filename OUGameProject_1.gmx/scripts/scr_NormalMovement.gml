//React to inputs

hsp = move * movespeed;
if (vsp < 10) vsp += grav;

if (place_meeting(x,y+1,obj_Wall))
{
    vsp = key_jump * -jumpspeed
}
