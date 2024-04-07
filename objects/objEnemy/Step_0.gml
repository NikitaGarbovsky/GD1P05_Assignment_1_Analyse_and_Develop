

timer--;

if(timer <= 0)
{
	timer = time;
}
if (timer > 0)
{ 
	if (timer % movementSpeed = 0) 
	{
		
		hasRightSideBeenReached();
		hasLeftSideBeenReached();
		if (objEnemy.movingDown == true)
		{
			moveDroneDown();
		}
		else if (objEnemy.hasMovedDown == true && objEnemy.justMoved == true)
		{
			objEnemy.movingDown = false;
			objEnemy.justMoved = false;
		}
		else if(objEnemy.movingRight == true && objEnemy.movingDown == false && objEnemy.justMoved == false)
		{
			moveDroneRight();
		}
		else if(objEnemy.movingLeft == true && objEnemy.movingDown == false && objEnemy.justMoved == false)
		{
			moveDroneLeft();
		}
		
	}
}




