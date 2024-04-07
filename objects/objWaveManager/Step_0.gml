
timer--;

if(timer <= 0)
{
	timer = time;
}
if (timer > 0)
{ 
	if (timer % enemyMovespeed = 0) 
	{
		if (objEnemy.hasMovedDown == true && objEnemy.justMoved == true)
			{
				objEnemy.movingDown = false;
				objEnemy.justMoved = false;
			}
		with(objEnemy)
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




