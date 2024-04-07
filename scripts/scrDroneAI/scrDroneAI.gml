
function moveDroneRight() // Move the drones right
{
	x = (x + objDroneAiWaveManager.droneHorizontalMovement);
}
function moveDroneLeft() // Move the drones left
{
	x = (x - objDroneAiWaveManager.droneHorizontalMovement);
}
function moveDroneDown() // Move the drones down
{
	with (objDrone)
	{
		changeDroneDirection(); 
		y = (y + objDroneAiWaveManager.droneVerticalMovement); // grabs the vertical movement values from the AImanager
		objDrone.hasMovedDown = true; // Tells the next step that the drones HAVE moved 
		objDrone.movingDown = false; // Tells the next step, moving down is completed
	}
}
function changeDroneDirection() // Changes the horizontal movement direction of the drone 
{
	with (objDrone)
	{
		if (movingLeft == true && objDrone.justMoved == false)
		{
			objDrone.movingLeft = false;
			objDrone.movingRight = true;
			
		}
		else if (movingRight == true  && objDrone.justMoved == false)
		{
			objDrone.movingLeft = true;
			objDrone.movingRight = false;
		}
		objDrone.justMoved = true;
	}
}
function hasLeftSideBeenReached() // checks if any drones have reached the left-hand side of the screen
{
	with (objDrone)
	{
		if (x <= 67 && objDrone.movingDown == false &&  objDrone.hasMovedDown == false)
		{
			objDrone.movingDown = true;
		}
	}
}
function hasRightSideBeenReached() // checks if any drones have reached the right-hand side of the screen
{
	with (objDrone)
	{
		if (x > 938 && objDrone.movingDown == false && objDrone.hasMovedDown == false)
		{
			objDrone.movingDown = true;
		}
	}
}