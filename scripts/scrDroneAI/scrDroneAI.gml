
function MoveDroneRight() // Move the drones right
{
	x = (x + objDroneAiWaveManager.m_droneHorizontalMovement);
	// TODO figure out how to change sprites frames during runtime
	with (objDrone)
	{
		
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
			image_index = 0;	
		}
	}
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
	// We initiate changing the direction BEFORE moving down, so we need to check: 1. Which direction, 
	// 2. If the drones have already moved, 3. If they already just changed direction
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
// Manages which sprite to change to next, based off which direction they are moving
var G_spawningDrone;
function NextSpriteDirectionFrame()
{
	//Find out which direction they are currently facing
	//Change the spawned drone to 
	
}
// Spawns a drone at a desired location, this is used by all the spawning wave functions below
function SpawnDrone(_droneXSpawnPosition, _droneYSpawnPosition)
{
	
	var dronesAreMovingRight = true;
	var dronesAreMovingLeft = true;
	
	// Before we spawn in drones, we need to check if there are already some that exist,
	// We do this because we need to sync the movement direction of the drones that will spawn,
	// To the ones already on the screen. Otherwise they will bug out moving in different directions.
	if instance_exists(objDrone)
	{
		if(objDrone.m_movingRight == true)
		{
			dronesAreMovingRight = true;
			dronesAreMovingLeft = false;
		} 
		else if (objDrone.m_movingLeft == true)
		{
			dronesAreMovingRight = false;
			dronesAreMovingLeft = true;
		}
	}
	// Spawn the actual drone
	G_spawningDrone = instance_create_layer(_droneXSpawnPosition, _droneYSpawnPosition , "Instances", objDrone);
	G_spawningDrone.image_alpha = 0;
	// TODO make it so when the drone spawn it is either given the black of red drone head to start off with
	//var redOrBlack = spawningDrone.image_index
	//if (redOrBlack 
	//G_spawningDrone.image_index = 0;

}
// Spawn a single 10 line of drones
function Spawn10by1DroneWave()
{
	var vDroneXSpawnPosition = 201;
	var vDroneYSpawnPosition = 154;
	for(var i = 0; i < 10; i++)
	{
		SpawnDrone(vDroneXSpawnPosition,vDroneYSpawnPosition);	
		vDroneXSpawnPosition += 67;
	}
}
// Spawns a 10 by 2 grid of drones
function Spawn10by2DroneWave()
{
	var vDroneXSpawnPosition = 201;
	var vDroneYSpawnPosition = 154;
	for(var i = 0; i < 10; i++)
	{
		for(var j = 0; j < 2; j++)
		{
			SpawnDrone(vDroneXSpawnPosition,vDroneYSpawnPosition);	
			vDroneYSpawnPosition += 77;
		}
		vDroneYSpawnPosition = 154
		vDroneXSpawnPosition += 67;
	}
}
// Spawns a 10 by 3 grid of drones 
function Spawn10by3DroneWave()
{
	var vDroneXSpawnPosition = 201;
	var vDroneYSpawnPosition = 154;
	for(var i = 0; i < 10; i++)
	{
		for(var j = 0; j < 3; j++)
		{
			SpawnDrone(vDroneXSpawnPosition,vDroneYSpawnPosition);	
			vDroneYSpawnPosition += 77;
		}
		vDroneYSpawnPosition = 154
		vDroneXSpawnPosition += 67;
	}
}
// Spawns a 10 by 4 grid of drones 
function Spawn10by4DroneWave()
{
	var vDroneXSpawnPosition = 201;
	var vDroneYSpawnPosition = 154;
	for(var i = 0; i < 10; i++)
	{
		for (var j = 0; j < 4; j++)
		{
			SpawnDrone(vDroneXSpawnPosition, vDroneYSpawnPosition);
			vDroneYSpawnPosition += 77;
		}
		vDroneYSpawnPosition = 154;
		vDroneXSpawnPosition += 67;
	}
}
