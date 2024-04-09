
function MoveDroneRight() // Move the drones right
{
	x = (x + objDroneAiWaveManager.m_droneHorizontalMovement);
}
function MoveDroneLeft() // Move the drones left
{
	x = (x - objDroneAiWaveManager.m_droneHorizontalMovement);
}
function MoveDroneDown() // Move the drones down
{
	with (objDrone)
	{
		ChangeDroneDirection(); 
		y = (y + objDroneAiWaveManager.m_droneVerticalMovement); // grabs the vertical movement values from the AImanager
		objDrone.m_hasMovedDown = true; // Tells the next step that the drones HAVE moved 
		objDrone.m_movingDown = false; // Tells the next step, moving down is completed
	}
}
function ChangeDroneDirection() // Changes the horizontal movement direction of the drone 
{
	// We initiate changing the direction BEFORE moving down, so we need to check 1. hich direction, 
	// if the drones have already moved and finally if they already just changed direction
	if (objDrone.m_movingLeft == true && objDrone.m_hasMovedDown == false && objDrone.m_justChangedDirection == false)
	{
		objDrone.m_movingLeft = false;
		objDrone.m_movingRight = true;
		objDrone.m_justChangedDirection = true;
			
	}
	else if (objDrone.m_movingRight == true  && objDrone.m_hasMovedDown == false && objDrone.m_justChangedDirection == false)
	{
		objDrone.m_movingLeft = true;
		objDrone.m_movingRight = false;
		objDrone.m_justChangedDirection = true;
	}
	
}
function HasLeftSideBeenReached() // Checks if any drones have reached the left-hand side of the screen
{
	with (objDrone)
	{
		if (x <= 67 && objDrone.m_movingDown == false &&  objDrone.m_hasMovedDown == false)
		{
			objDrone.m_movingDown = true;
		}
	}
}
function HasRightSideBeenReached() // Checks if any drones have reached the right-hand side of the screen
{
	with (objDrone)
	{
		if (x > 938 && objDrone.m_movingDown == false && objDrone.m_hasMovedDown == false)
		{
			objDrone.m_movingDown = true;
		}
	}
}

function SpawnDroneWave()
{
	
}