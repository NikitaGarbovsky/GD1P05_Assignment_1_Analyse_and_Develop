
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




