//React to inputs on ice

//acceleration
if (hsp <= movespeed && hsp >= -movespeed)
{
    hsp += move * grav;
}

//deceleration
if (move == 0 && hsp != 0)
{
    hsp -= attack_direction * 0.05;
    if (hsp < .1 && hsp > -.1)
    {
        hsp = 0;
    }
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
