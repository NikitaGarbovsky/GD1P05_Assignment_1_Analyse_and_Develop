m_process_clicked = function()
{
	objMainLevelManager.persistent = false;
	audio_stop_sound(m_SoundEnergyHum);
	instance_destroy(objMainLevelManager)
	room_goto(MainMenu);
}





