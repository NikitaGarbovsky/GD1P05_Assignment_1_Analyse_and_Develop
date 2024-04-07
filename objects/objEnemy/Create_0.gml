
time = 100000;
timer = time;

moveDroneRight = function()
{
	x = (x + 94);
}
moveDroneLeft = function()
{
	x = (x - 94);
}
function moveDroneDown()
{

	objEnemy.y = (y + 77);	
	movingDown = false;
}

function hasLeftSideBeenReached()
{
	
	if (x = 94 && movingDown == false)
	{
		return true;
	}
	else 
	{
		return false;	
	}
}
function hasRightSideBeenReached()
{
	if (x = 1504)
	{
		return true;
	}
	else 
	{
		return false;	
	}
}


