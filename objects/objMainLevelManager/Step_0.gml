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
	// LEVEL 1
	if (objPlayer.m_Orbs == 1)
	{
		if (m_CompletedIntro1 == true && m_CompletedIntro2 == false)
		{
			if (timer % 600 = 0)
			{
				if (m_HaveSpawned == false)
				{
					var instanceDefiantDrone1 = instance_create_layer(-134, 770, "Layer_SplineTrackLeft", objDefiantDrone);
					instanceDefiantDrone1.m_BezierTrack = true;
					instanceDefiantDrone1.m_SplineTrack = false;
					instanceDefiantDrone1.m_LeftSideTrack = true;
					instanceDefiantDrone1.m_RightSideTrack = false;

					var instanceDefiantDrone2 = instance_create_layer(-134, 770, "Layer_SplineTrackLeft", objDefiantDrone);
					instanceDefiantDrone2.m_BezierTrack = true;
					instanceDefiantDrone2.m_SplineTrack = false;
					instanceDefiantDrone2.m_LeftSideTrack = false;
					instanceDefiantDrone2.m_RightSideTrack = true;
					
					objDefiantDroneManager.m_BezierTrackSpeed = 175;
					m_HaveSpawned = true;
				}
				else
				{
					var instanceDefiantDrone = instance_create_layer(-134, 770, "Layer_SplineTrackLeft", objDefiantDrone);
					instanceDefiantDrone.m_BezierTrack = false;
					instanceDefiantDrone.m_SplineTrack = true;
					
					
					if (instanceDefiantDrone.m_RightSideTrack == false)
					{
						instanceDefiantDrone.m_RightSideTrack = true;
						instanceDefiantDrone.m_LeftSideTrack = false;
					}
					else
					{
						instanceDefiantDrone.m_RightSideTrack = false;
						instanceDefiantDrone.m_LeftSideTrack = true;
					}
				}
				
			}
		}
		else if (m_CompletedIntro2 == true && m_CompletedLevel1 == false)
		{
			
			if (timer % 100 = 0 && m_HaveSpawned == false)
			{
				if instance_exists(objDefiantDrone)
				{
					instance_destroy(objDefiantDrone);
				}
				instance_create_layer(1050, 600, "Layer_SplineTrackLeft", objNeutralDrone)
				timer = time - 1;
				m_HaveSpawned = true;
			}	
			
			if (timer % 1000 = 0)
			{
				if !instance_exists(objDefiantDrone)
				{
					var defiantDroneInstance = instance_create_layer(-134, 770, "Layer_SplineTrackLeft", objDefiantDrone)
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
				
				if (m_CompletedIntro2 == true)
				{
					if !instance_exists(objDefiantDrone)
					{
						var defiantDroneInstance = instance_create_layer(-134, 770, "Layer_SplineTrackLeft", objDefiantDrone)
						defiantDroneInstance.m_RightSideTrack = true;
						defiantDroneInstance.m_LeftSideTrack = false;
					}
				}
			}
		}
	}
	// LEVEL 2
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
				var defiantDroneInstance = instance_create_layer(-134, 770, "Layer_SplineTrackLeft", objDefiantDrone)
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
				var defiantDroneInstance = instance_create_layer(-134, 770, "Layer_SplineTrackLeft", objDefiantDrone)
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
				var defiantDroneInstance = instance_create_layer(-134, 770, "Layer_SplineTrackLeft", objDefiantDrone)
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
				var defiantDroneInstance = instance_create_layer(-134, 770, "Layer_SplineTrackLeft", objDefiantDrone)
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
				var defiantDroneInstance = instance_create_layer(-134, 770, "Layer_SplineTrackLeft", objDefiantDrone)
				defiantDroneInstance.m_RightSideTrack = true;
				defiantDroneInstance.m_LeftSideTrack = false;
				objDefiantDroneManager.m_SplineTrackSpeed = 150
				if !instance_exists(objNeutralDrone)
				{
					instance_create_layer(-50, 600, "Layer_SplineTrackLeft", objNeutralDrone)
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
	// LEVEL 3
	// Step 5
	if (objPlayer.m_Orbs == 3)
	{
		if (m_Waves != 1 && m_wavesHaveBeenReset == false)
		{
			Reset_Waves();
			m_wavesHaveBeenReset = true;
		}
		// Step 6 (Wave 1)
		if (m_Waves == 1)
		{
			if (timer % 700 = 0)
			{
				var defiantDroneInstance1 = instance_create_layer(-134, 770, "Layer_SplineTrackLeft", objDefiantDrone)
				defiantDroneInstance1.m_BezierTrack = true;
				defiantDroneInstance1.m_SplineTrack = false;
				defiantDroneInstance1.m_RightSideTrack = true;
				defiantDroneInstance1.m_LeftSideTrack = false;
					
				var defiantDroneInstance2 = instance_create_layer(-134, 770, "Layer_SplineTrackLeft", objDefiantDrone)
				defiantDroneInstance2.m_BezierTrack = true;
				defiantDroneInstance2.m_SplineTrack = false;
				defiantDroneInstance2.m_RightSideTrack = false;
				defiantDroneInstance2.m_LeftSideTrack = true;
				objDefiantDroneManager.m_BezierTrackSpeed = 300;
			}
			if !instance_exists(objDrone)
			{
				Spawn10by4DroneWave();
				objDroneAiWaveManager.m_enemyMovespeed = 20;
				objDroneAiWaveManager.m_droneHorizontalMovement = 20;
			}
		}
		// Step 6 (Wave 2)
		if (m_Waves == 2)
		{
			if (timer % 600 = 0)
			{
				var defiantDroneInstance1 = instance_create_layer(-134, 770, "Layer_SplineTrackLeft", objDefiantDrone)
				defiantDroneInstance1.m_BezierTrack = true;
				defiantDroneInstance1.m_SplineTrack = false;
				defiantDroneInstance1.m_RightSideTrack = true;
				defiantDroneInstance1.m_LeftSideTrack = false;
					
				var defiantDroneInstance2 = instance_create_layer(-134, 770, "Layer_SplineTrackLeft", objDefiantDrone)
				defiantDroneInstance2.m_BezierTrack = true;
				defiantDroneInstance2.m_SplineTrack = false;
				defiantDroneInstance2.m_RightSideTrack = false;
				defiantDroneInstance2.m_LeftSideTrack = true;
				objDefiantDroneManager.m_BezierTrackSpeed = 250;
			}
			if !instance_exists(objDrone)
			{
				Spawn10by4DroneWave();
				objDroneAiWaveManager.m_enemyMovespeed = 18;
				objDroneAiWaveManager.m_droneHorizontalMovement = 20;
			}
		}
		// Step 6 (Wave 3)
		if (m_Waves == 3)
		{
			if (timer % 600 = 0)
			{
				var defiantDroneInstance1 = instance_create_layer(-134, 770, "Layer_SplineTrackLeft", objDefiantDrone)
				defiantDroneInstance1.m_BezierTrack = true;
				defiantDroneInstance1.m_SplineTrack = false;
				defiantDroneInstance1.m_RightSideTrack = true;
				defiantDroneInstance1.m_LeftSideTrack = false;
					
				var defiantDroneInstance2 = instance_create_layer(-134, 770, "Layer_SplineTrackLeft", objDefiantDrone)
				defiantDroneInstance2.m_BezierTrack = true;
				defiantDroneInstance2.m_SplineTrack = false;
				defiantDroneInstance2.m_RightSideTrack = false;
				defiantDroneInstance2.m_LeftSideTrack = true;
				objDefiantDroneManager.m_BezierTrackSpeed = 230;
			}
			if !instance_exists(objDrone)
			{
				Spawn10by4DroneWave();
				objDroneAiWaveManager.m_enemyMovespeed = 16;
				objDroneAiWaveManager.m_droneHorizontalMovement = 20;
			}
		}
		// Step 6 (Wave 4)
		if (m_Waves == 4)
		{
			if (timer % 500 = 0)
			{
				var defiantDroneInstance1 = instance_create_layer(-134, 770, "Layer_SplineTrackLeft", objDefiantDrone)
				defiantDroneInstance1.m_BezierTrack = true;
				defiantDroneInstance1.m_SplineTrack = false;
				defiantDroneInstance1.m_RightSideTrack = true;
				defiantDroneInstance1.m_LeftSideTrack = false;
					
				var defiantDroneInstance2 = instance_create_layer(-134, 770, "Layer_SplineTrackLeft", objDefiantDrone)
				defiantDroneInstance2.m_BezierTrack = true;
				defiantDroneInstance2.m_SplineTrack = false;
				defiantDroneInstance2.m_RightSideTrack = false;
				defiantDroneInstance2.m_LeftSideTrack = true;
				objDefiantDroneManager.m_BezierTrackSpeed = 210;
			}
			if !instance_exists(objDrone)
			{
				Spawn10by4DroneWave();
				objDroneAiWaveManager.m_enemyMovespeed = 14;
				objDroneAiWaveManager.m_droneHorizontalMovement = 20;
			}
		}
		// Step 6 (Wave 5)
		if (m_Waves == 5)
		{
			if (timer % 400 = 0)
			{
				var defiantDroneInstance1 = instance_create_layer(-134, 770, "Layer_SplineTrackLeft", objDefiantDrone)
				defiantDroneInstance1.m_BezierTrack = true;
				defiantDroneInstance1.m_SplineTrack = false;
				defiantDroneInstance1.m_RightSideTrack = true;
				defiantDroneInstance1.m_LeftSideTrack = false;
					
				var defiantDroneInstance2 = instance_create_layer(-134, 770, "Layer_SplineTrackLeft", objDefiantDrone)
				defiantDroneInstance2.m_BezierTrack = true;
				defiantDroneInstance2.m_SplineTrack = false;
				defiantDroneInstance2.m_RightSideTrack = false;
				defiantDroneInstance2.m_LeftSideTrack = true;
				objDefiantDroneManager.m_BezierTrackSpeed = 210;
			}
			if !instance_exists(objDrone)
			{
				Spawn10by4DroneWave();
				objDroneAiWaveManager.m_enemyMovespeed = 12;
				objDroneAiWaveManager.m_droneHorizontalMovement = 20;
			}
			if !instance_exists(objNeutralDrone)
			{
				instance_create_layer(-134, 770, "Layer_SplineTrackLeft", objNeutralDrone)
			}
		}
	}
	// LEVEL 4
	// Step 7
	if (objPlayer.m_Orbs == 4)
	{
		if (m_Waves != 1 && m_wavesHaveBeenReset == false)
		{
			Reset_Waves();
			m_wavesHaveBeenReset = true;
		}
		// Step 8 (Wave 1)
		if (m_Waves == 1)
		{
			if !instance_exists(objDrone)
			{
				Spawn10by4DroneWave();
				objDroneAiWaveManager.m_enemyMovespeed = 10;
				objDroneAiWaveManager.m_droneHorizontalMovement = 20;
				objDroneAiWaveManager.m_droneVerticalMovement = 20;
				
				if !instance_exists(objNeutralDrone)
				{
					instance_create_layer(-134, 300, "Layer_SplineTrackLeft", objNeutralDrone)
					instance_create_layer(-134, 375, "Layer_SplineTrackLeft", objNeutralDrone)
					instance_create_layer(-134, 450, "Layer_SplineTrackLeft", objNeutralDrone)
					instance_create_layer(-134, 525, "Layer_SplineTrackLeft", objNeutralDrone)
					instance_create_layer(1134, 300, "Layer_SplineTrackLeft", objNeutralDrone)
					instance_create_layer(1134, 375, "Layer_SplineTrackLeft", objNeutralDrone)
					instance_create_layer(1134, 450, "Layer_SplineTrackLeft", objNeutralDrone)
					instance_create_layer(1134, 525, "Layer_SplineTrackLeft", objNeutralDrone)
				}
			}
		}
		// Step 8 (Wave 2)
		if (m_Waves == 2)
		{
			if (timer % 800 = 0)
			{

			}
			if !instance_exists(objDrone)
			{
				Spawn10by4DroneWave();
				objDroneAiWaveManager.m_enemyMovespeed = 8;
				objDroneAiWaveManager.m_droneHorizontalMovement = 20;
				objDroneAiWaveManager.m_droneVerticalMovement = 30;
			}
		}
		// Step 8 (Wave 3)
		if (m_Waves == 3)
		{
			if (timer % 800 = 0)
			{

			}
			if !instance_exists(objDrone)
			{
				Spawn10by4DroneWave();
				objDroneAiWaveManager.m_enemyMovespeed = 7;
				objDroneAiWaveManager.m_droneHorizontalMovement = 20;
				objDroneAiWaveManager.m_droneVerticalMovement = 40;
			}
		}
		// Step 8 (Wave 4)
		if (m_Waves == 4)
		{
			if (timer % 800 = 0)
			{

			}
			if !instance_exists(objDrone)
			{
				Spawn10by4DroneWave();
				objDroneAiWaveManager.m_enemyMovespeed = 6;
				objDroneAiWaveManager.m_droneHorizontalMovement = 50;
			}
		}
		// Step 8 (Wave 5)
		if (m_Waves == 5)
		{
			if (timer % 200 = 0)
			{
				var defiantDroneInstance1 = instance_create_layer(-134, 770, "Layer_SplineTrackLeft", objDefiantDrone)
				defiantDroneInstance1.m_BezierTrack = true;
				defiantDroneInstance1.m_SplineTrack = false;
				defiantDroneInstance1.m_RightSideTrack = true;
				defiantDroneInstance1.m_LeftSideTrack = false;
					
				var defiantDroneInstance2 = instance_create_layer(-134, 770, "Layer_SplineTrackLeft", objDefiantDrone)
				defiantDroneInstance2.m_BezierTrack = true;
				defiantDroneInstance2.m_SplineTrack = false;
				defiantDroneInstance2.m_RightSideTrack = false;
				defiantDroneInstance2.m_LeftSideTrack = true;
				objDefiantDroneManager.m_BezierTrackSpeed = 210;
				
			}
			else if (timer % 700 = 0)
			{
				var defiantDroneInstance1 = instance_create_layer(-134, 770, "Layer_SplineTrackLeft", objDefiantDrone)
				defiantDroneInstance1.m_BezierTrack = false;
				defiantDroneInstance1.m_SplineTrack = true;
				defiantDroneInstance1.m_RightSideTrack = true;
				defiantDroneInstance1.m_LeftSideTrack = false;
					
				var defiantDroneInstance2 = instance_create_layer(-134, 770, "Layer_SplineTrackLeft", objDefiantDrone)
				defiantDroneInstance2.m_BezierTrack = false;
				defiantDroneInstance2.m_SplineTrack = true;
				defiantDroneInstance2.m_RightSideTrack = false;
				defiantDroneInstance2.m_LeftSideTrack = true;
				objDefiantDroneManager.m_SplineTrackSpeed = 100;
	
			}
			if !instance_exists(objDrone)
			{
				Spawn10by4DroneWave();
				objDroneAiWaveManager.m_enemyMovespeed = 5;
				objDroneAiWaveManager.m_droneHorizontalMovement = 60;
			}
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