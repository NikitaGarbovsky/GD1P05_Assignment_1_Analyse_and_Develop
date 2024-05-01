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
else
	{
		Spawn10by4DroneWave();	
	}
}






