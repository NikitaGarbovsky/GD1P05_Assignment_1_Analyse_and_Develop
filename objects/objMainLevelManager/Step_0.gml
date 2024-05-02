// Checks if the player died
if !instance_exists(objPlayer)
{
	if (timer % 500 == 0)
	{
		room_goto(roomGameOver);
	}
}
if(keyboard_check(vk_escape))
{
	objMainLevelManager.persistent = false;
	instance_destroy(objMainLevelManager)
	audio_stop_sound(m_MainSoundtrack);
	room_goto(MainMenu);
}
if(timer <= 0)
{
	// Reset timer
	timer = time;
}
	timer--;
if instance_exists(objPlayer)
{
	if (objPlayer.m_Orbs == 1)
	{
		if (m_CompletedIntro1 == true && m_CompletedIntro2 == false)
		{
			if (timer % 500 = 0)
			{
				instance_create_layer(-134, 770, layer, objDefiantDrone)
			}
		}
		else if (m_CompletedIntro2 == true && m_CompletedLevel1 == false)
		{
		
			if (timer % 50 = 0 && m_HaveSpawned == false)
			{
				if instance_exists(objDefiantDrone)
				{
					instance_destroy(objDefiantDrone);
				}
				instance_create_layer(1050, 600, layer, objNeutralDrone)
				m_HaveSpawned = true;
			}	
			
			if (timer % 1000 = 0)
			{
				if !instance_exists(objDefiantDrone)
				{
					var defiantDroneInstance = instance_create_layer(-134, 770, layer, objDefiantDrone)
					defiantDroneInstance.m_RightSideTrack = true;
					defiantDroneInstance.m_LeftSideTrack = false;
				}
			}
		}
	
		if !instance_exists(objDrone)
		{
			if (m_CompletedIntro1 == true && m_CompletedIntro2 == false)
			{
				// Step 2
				Spawn10by2DroneWave();
			}
			else if (m_CompletedIntro2 == true && m_CompletedLevel1 == false)
			{
				// Step 3
				Spawn10by3DroneWave();
			}
			else 
			{
				// Step 1
				Spawn10by1DroneWave();	
			}
		}
	}
	// Step 4 
	if (objPlayer.m_Orbs == 2)
	{
		if (m_Waves != 1 && m_wavesHaveBeenReset == false)
		{
			Reset_Waves();
			m_wavesHaveBeenReset = true;
		}
		// Step 4 (Wave 1)
		if (m_Waves == 1)
		{
			if (timer % 900 = 0)
			{
				var defiantDroneInstance = instance_create_layer(-134, 770, layer, objDefiantDrone)
				defiantDroneInstance.m_RightSideTrack = true;
				defiantDroneInstance.m_LeftSideTrack = false;
				objDefiantDroneManager.m_SplineTrackSpeed = 300;
			}
			if !instance_exists(objDrone)
			{
				Spawn10by1DroneWave();
				objDroneAiWaveManager.m_enemyMovespeed = 30;
			}
		}
		// Step 4 (Wave 2)
		if (m_Waves == 2)
		{
			if (timer % 700 = 0)
			{
				var defiantDroneInstance = instance_create_layer(-134, 770, layer, objDefiantDrone)
				defiantDroneInstance.m_RightSideTrack = false;
				defiantDroneInstance.m_LeftSideTrack = true;
				objDefiantDroneManager.m_SplineTrackSpeed = 250;
			}
			if !instance_exists(objDrone)
			{
				Spawn10by2DroneWave();
				objDroneAiWaveManager.m_enemyMovespeed = 25;
			}
		}
		// Step 4 (Wave 3)
		if (m_Waves == 3)
		{
			if (timer % 600 = 0)
			{
				var defiantDroneInstance = instance_create_layer(-134, 770, layer, objDefiantDrone)
				defiantDroneInstance.m_RightSideTrack = true;
				defiantDroneInstance.m_LeftSideTrack = false;
				objDefiantDroneManager.m_SplineTrackSpeed = 200;
			}
			if !instance_exists(objDrone)
			{
				Spawn10by3DroneWave();
				objDroneAiWaveManager.m_enemyMovespeed = 20;
				objDroneAiWaveManager.m_droneHorizontalMovement = 10;
			}
		}
		// Step 4 (Wave 4)
		if (m_Waves == 4)
		{
			if (timer % 500 = 0)
			{
				var defiantDroneInstance = instance_create_layer(-134, 770, layer, objDefiantDrone)
				defiantDroneInstance.m_RightSideTrack = false;
				defiantDroneInstance.m_LeftSideTrack = true;
				objDefiantDroneManager.m_SplineTrackSpeed = 175
			}
			if !instance_exists(objDrone)
			{
				Spawn10by4DroneWave();
				objDroneAiWaveManager.m_enemyMovespeed = 15;
				objDroneAiWaveManager.m_droneHorizontalMovement = 15;
			}
		}
		// Step 4 (Wave 5)
		if (m_Waves == 5)
		{
			if (timer % 400 = 0)
			{
				var defiantDroneInstance = instance_create_layer(-134, 770, layer, objDefiantDrone)
				defiantDroneInstance.m_RightSideTrack = true;
				defiantDroneInstance.m_LeftSideTrack = false;
				objDefiantDroneManager.m_SplineTrackSpeed = 150
				if !instance_exists(objNeutralDrone)
				{
					instance_create_layer(-50, 600, layer, objNeutralDrone)
				}
			}
			if !instance_exists(objDrone)
			{
				Spawn10by4DroneWave();
				objDroneAiWaveManager.m_enemyMovespeed = 10;
				objDroneAiWaveManager.m_droneHorizontalMovement = 20;
			}
		}
	}
	if (objPlayer.m_Orbs == 3)
	{
		if !instance_exists(objDrone)
		{
			Spawn10by2DroneWave();
		}
	}
	if (objPlayer.m_Orbs == 4)
	{
		if !instance_exists(objDrone)
		{

				Spawn10by2DroneWave();
		
		}
	}
	if (objPlayer.m_Orbs == 5)
	{
		if !instance_exists(objDrone)
		{

				Spawn10by2DroneWave();
		
		}
	}
}