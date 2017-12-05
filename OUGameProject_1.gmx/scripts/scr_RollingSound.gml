if (!audio_is_playing(snd_PlayerRoll) && place_meeting(x,y+1,obj_Wall))
{
    audio_play_sound_on(sfx, snd_PlayerRoll, 0, 0);
}
//doesnt work, not in use
