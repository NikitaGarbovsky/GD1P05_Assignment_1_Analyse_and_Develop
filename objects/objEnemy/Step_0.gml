

timer--;

if(timer <= 0)
{
	timer = time;
}
if (timer > 0)
{ 
	if (timer % movementSpeed = 0) // change this figure to modify how fast the enemies move
	{
		if (hasLeftSideBeenReached() == true && movingDown == false)
		{
			movingLeft = false;
			movingRight = true;
		}
		else if (hasRightSideBeenReached() == true && movingDown == false)
		{
			movingLeft = true;
			movingRight = false;
			movingDown = true;
		}
		else if (movingLeft == true)
		{
			moveDroneLeft();
			hasMovedDown = false;
		}
		else if (movingRight == true)
		{
			moveDroneRight();
			hasMovedDown = false;
		}
		
	}
}




