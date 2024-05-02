
// These are all the conditions to move to the next wave or level in the main game.
// The condition for progressing in the game is to destroy the wave of drones.
var droneCount = instance_number(objDrone);
if(droneCount == 1)
{
	if(objPlayer.m_Orbs < 5)
	{
		if(objMainLevelManager.m_CompletedIntro1 == false)
		{
			objMainLevelManager.m_CompletedIntro1 = true;
		} 
		else if(objMainLevelManager.m_CompletedIntro2 == false)
		{
			objMainLevelManager.m_CompletedIntro2 = true;
			objMainLevelManager.m_HaveSpawned  = false;
		}
		else if(objMainLevelManager.m_CompletedLevel1 == false)
		{
			objMainLevelManager.m_CompletedLevel1 = true;
		}
		else if (objMainLevelManager.m_Waves == 0)
		{
			objMainLevelManager.m_Waves = objMainLevelManager.m_Waves + 1;
		}
		else if (objMainLevelManager.m_Waves == 1)
		{
			objMainLevelManager.m_Waves = objMainLevelManager.m_Waves + 1;
		}
		else if (objMainLevelManager.m_Waves == 2)
		{
			objMainLevelManager.m_Waves = objMainLevelManager.m_Waves + 1;
		}
		else if (objMainLevelManager.m_Waves == 3)
		{
			objMainLevelManager.m_Waves = objMainLevelManager.m_Waves + 1;
		}
		else if (objMainLevelManager.m_Waves == 4)
		{
			objMainLevelManager.m_Waves = objMainLevelManager.m_Waves + 1;
		}
	}	
	else if (objPlayer.m_Orbs == 5)
	{
		if (objMainLevelManager.m_Waves == 1)
		{
			objMainLevelManager.m_Waves = objMainLevelManager.m_Waves + 1;
		}
		else if (objMainLevelManager.m_Waves == 2)
		{
			objMainLevelManager.m_Waves = objMainLevelManager.m_Waves + 1;
		}
		else if (objMainLevelManager.m_Waves == 3)
		{
			objMainLevelManager.m_Waves = objMainLevelManager.m_Waves + 1;
		}
		else if (objMainLevelManager.m_Waves == 4)
		{
			objMainLevelManager.m_Waves = objMainLevelManager.m_Waves + 1;
		}
	}
}

audio_play_sound(soundDroneDestroy,0,0);
objMainLevelManager.m_DronesDestroyed = objMainLevelManager.m_DronesDestroyed + 1;




