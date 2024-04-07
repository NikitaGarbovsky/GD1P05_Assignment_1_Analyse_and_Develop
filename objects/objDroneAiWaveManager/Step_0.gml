
timer--;

if(timer <= 0)
{
	timer = time;
}
if (timer > 0)
{ 
	if (timer % enemyMovespeed = 0) 
	{
		if (objDrone.hasMovedDown == true && objDrone.justMoved == true)
			{
				objDrone.movingDown = false;
				objDrone.justMoved = false;
			}
		with(objDrone)
		{
			if (movingDown == true)
			{
				moveDroneDown();
			}
			else if(movingRight == true && movingDown == false && justMoved == false)
			{
				moveDroneRight();
				hasMovedDown = false;
			
			}
			else if(movingLeft == true && movingDown == false && justMoved == false)
			{
				moveDroneLeft();
				hasMovedDown = false;
			}
		}
	}
}




