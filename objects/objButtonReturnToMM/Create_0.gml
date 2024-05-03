m_process_clicked = function()
{
	objMainLevelManager.persistent = false;
	audio_stop_sound(soundEnergyHum);
	audio_stop_sound(soundMainLevelSoundTrack);
	instance_destroy(objMainLevelManager)
	room_goto(MainMenu);
}





