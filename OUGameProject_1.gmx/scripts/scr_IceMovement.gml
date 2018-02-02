//React to inputs on ice
if (sign(hsp) != move)
{
    hsp += decel * move;
}
if (move == 0 && hsp != 0)
{
    hsp += decel * -(sign(hsp));
}
/*if (hsp == 0)
{
    hsp = move * movespeed;
}
*/
if (abs(hsp) <0.05 && abs(hsp) >0)
{
    hsp = 0;
}
else if (hsp < 4.5 && hsp > -4.5)
{
    hsp += accel * move
}


if (vsp < 20) vsp += grav;

if (place_meeting(x,y+1,obj_Wall))
{
    if (key_jump) 
    {
        vsp = -jumpspeed;
    }
    if (key_jump == 1) audio_play_sound_on(obj_SFX.sfx, snd_Jump, false, 0);
}
