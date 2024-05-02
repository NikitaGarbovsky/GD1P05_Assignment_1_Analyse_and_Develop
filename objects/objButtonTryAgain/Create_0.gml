m_process_clicked = function()
{
	objMainLevelManager.persistent = false;
	instance_destroy(objMainLevelManager)
	room_goto(MainLevel);
}





