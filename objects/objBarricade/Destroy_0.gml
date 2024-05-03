var barricadeCount = instance_number(objBarricade);
if(barricadeCount == 1)
{
	objMainLevelManager.m_HasWon = true;
	instance_destroy(objDrone);
	instance_destroy(objNeutralDrone);
	instance_destroy(objDefiantDrone);
	audio_play_sound(soundYouWinTriumph,0,0);
	audio_stop_sound(soundMainLevelSoundTrack);
}






