// Use the keys 1-4 to spawn various waves of space invaders
if (keyboard_check_pressed(ord("1")) && room_get_name(room) != "MainLevel")
{
	Spawn10by1DroneWave();
}
if (keyboard_check_pressed(ord("2")) && room_get_name(room) != "MainLevel")
{
	Spawn10by2DroneWave();
}    
if (keyboard_check_pressed(ord("3")) && room_get_name(room) != "MainLevel")
{
	Spawn10by3DroneWave();
}
if (keyboard_check_pressed(ord("4")) && room_get_name(room) != "MainLevel")
{
	Spawn10by4DroneWave();
}
// Each time it steps through, check if the drones can move. (unpause movement with the alt key)
if instance_exists(objDrone)
{
	if(objDroneAiWaveManager.m_canDronesStartMoving == true)
	{
		timer--;
		// If timer has reached 0
		if(timer <= 0)
		{
			// Reset timer
			timer = time;
		}
		if (timer > 0)
		{ 
			if (timer % m_enemyMovespeed = 0) 
			{
				if (objDrone.m_hasMovedDown == true)
					{
						objDrone.m_hasMovedDown = false;
					}
				with(objDrone)
				{
					if (m_movingDown == true)
					{
						MoveDroneDown();
					}
 					else if(m_movingRight == true && m_movingDown == false && m_hasMovedDown == false)
					{
						MoveDroneRight();
						objDrone.m_justChangedDirection = false;
						//Changes the animation frame of the drone
						if (image_index == 0)
						{
							image_index = 5;
						}
						else if(image_index == 5)
						{
							image_index = 4;	
						}
						else if(image_index == 4)
						{
							image_index = 3;	
						}
						else if(image_index == 3)
						{
							image_index = 2;	
						}
						else if (image_index == 2)
						{
							image_index = 1;	
						}
						else if (image_index == 1)
						{
							image_index = 0;	
						}
					}
					else if(m_movingLeft == true && m_movingDown == false && m_hasMovedDown == false)
					{
						MoveDroneLeft();
						objDrone.m_justChangedDirection = false;
						// Changes the animation of the drone
						if (image_index == 0)
						{
							image_index = 1;
						}
						else if(image_index == 1)
						{
							image_index = 2;	
						}
						else if(image_index == 2)
						{
							image_index = 3;	
						}
						else if(image_index == 3)
						{
							image_index = 4;	
						}
						else if(image_index == 4)
						{
							image_index = 5;	
						}
						else if (image_index == 5)
						{
							image_index = 0 ;	
						}
					}
				}
			}
		}
	}
}

