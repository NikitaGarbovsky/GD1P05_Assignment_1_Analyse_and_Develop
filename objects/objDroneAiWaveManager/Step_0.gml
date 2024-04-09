
// Stops all drones on the screen in their tracks
if (keyboard_check_pressed(vk_space))
{
	if(objDroneAiWaveManager.m_canDronesStartMoving == false)
	{
		objDroneAiWaveManager.m_canDronesStartMoving = true;
	}
	else
	{
		objDroneAiWaveManager.m_canDronesStartMoving = false;
	}
}

if (keyboard_check_pressed(ord("1")))
{
	Spawn10by1DroneWave();
}
if (keyboard_check_pressed(ord("2")))
{
	Spawn10by2DroneWave();
}
if (keyboard_check_pressed(ord("3")))
{
	Spawn10by3DroneWave();
}
if (keyboard_check_pressed(ord("4")))
{
	Spawn10by4DroneWave();
}
if(objDroneAiWaveManager.m_canDronesStartMoving == true)
{
	timer--;

	if(timer <= 0)
	{
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
					objDrone.m_hasMovedDown = false;
					objDrone.m_justChangedDirection = false;
			
				}
				else if(m_movingLeft == true && m_movingDown == false && m_hasMovedDown == false)
				{
					MoveDroneLeft();
					objDrone.m_hasMovedDown = false;
					objDrone.m_justChangedDirection = false;
				}
			}
		}
	}
}


