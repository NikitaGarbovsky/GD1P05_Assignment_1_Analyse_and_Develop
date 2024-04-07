

function moveDroneRight()
{
	x = (x + 94);
}
function moveDroneLeft()
{
	x = (x - 94);
}
function moveDroneDown()
{
	with (objEnemy)
	{
		changeSide();
		y = (y + 77);
		objEnemy.hasMovedDown = true;
		objEnemy.movingDown = false;
	}
}
function changeSide()
{
	with (objEnemy)
	{
		if (movingLeft == true && objEnemy.justMoved == false)
		{
			objEnemy.movingLeft = false;
			objEnemy.movingRight = true;
			
		}
		else if (movingRight == true  && objEnemy.justMoved == false)
		{
			objEnemy.movingLeft = true;
			objEnemy.movingRight = false;
		}
		objEnemy.justMoved = true;
	}
}
function hasLeftSideBeenReached()
{
	with (objEnemy)
	{
		if (x = 94 && objEnemy.movingDown == false &&  objEnemy.hasMovedDown == false)
		{
			objEnemy.movingDown = true;
		}
	}
}
function hasRightSideBeenReached()
{
	with (objEnemy)
	{
		if (x = 1504 && objEnemy.movingDown == false && objEnemy.hasMovedDown == false)
		{
			objEnemy.movingDown = true;
		}
	}
}