

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
	objEnemy.y = (objEnemy.y + 77);
	objEnemy.hasMovedDown = true;
	objEnemy.movingDown = false;
	objEnemy.justMoved = true;
	changeSide();
}
function changeSide()
{
	if (objEnemy.movingLeft == true)
	{
		objEnemy.movingLeft = false;
		objEnemy.movingRight = true;
	}
	else if (objEnemy.movingRight == true)
	{
		objEnemy.movingLeft = true;
		objEnemy.movingRight = false;
	}
}

function hasLeftSideBeenReached()
{
	if (x = 94 && objEnemy.movingDown == false &&  objEnemy.hasMovedDown == false)
	{
		objEnemy.movingDown = true;
	}
}
function hasRightSideBeenReached()
{
	if (x = 1504 && objEnemy.movingDown == false && objEnemy.hasMovedDown == false)
	{
		objEnemy.movingDown = true;
	}
}