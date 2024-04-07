
function moveDroneRight() // Move the drones right
{
	var test;
	test = objDroneAiWaveManager.droneHorizontalMovement;
	x = (x + test);
}
function moveDroneLeft() // Move the drones left
{
	var test;
	test = objDroneAiWaveManager.droneHorizontalMovement;
	x = (x - test);
}
function moveDroneDown() // Move the drones down
{
	with (objDrone)
	{
		var test;
		test = objDroneAiWaveManager.droneVerticalMovement;
		
		changeDroneDirection(); 
		y = ( y+ test);
		objDrone.hasMovedDown = true; // tells the next step that the drones HAVE moved 
		objDrone.movingDown = false; // tells the next step, moving down is completed
	}
}
function changeDroneDirection() 
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