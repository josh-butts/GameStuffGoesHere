//React to inputs

hsp = move * movespeed;
if (vsp < 20) vsp += grav;

if (place_meeting(x,y+1,obj_Wall))
{
    if (key_jump) {
        vsp = -jumpspeed;
    }
    if (key_jump == 1) audio_play_sound_on(sfx, snd_Jump, false, 0);
}
