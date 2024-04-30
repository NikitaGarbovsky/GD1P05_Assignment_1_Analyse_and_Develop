var droneCount = instance_number(objDrone);
if(droneCount == 1)
{
	if(objPlayer.m_Orbs < 5)
	{
		if(objMainLevelManager.m_CompletedIntro1 == false)
		{
			objMainLevelManager.m_CompletedIntro1 = true
		} 
	}
	else
	{
		Spawn10by4DroneWave();	
	}
}






