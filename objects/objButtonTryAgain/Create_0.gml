m_process_clicked = function()
{
	objMainLevelManager.persistent = false;
	audio_stop_sound(soundEnergyHum);
	instance_destroy(objMainLevelManager)
	audio_stop_sound(soundMainLevelSoundTrack);
	room_goto(MainLevel);
}





