
currentLerpTime += 1 / 6000;

var alpha = currentLerpTime / lerpTime;

	startX = x;
	startY = y;

	endX = instance_nearest(objDrone.x,objDrone.y, objDrone).x
	endY = instance_nearest(objDrone.x,objDrone.y, objDrone).y

	x = math_Lerp(startX, endX, alpha);
	y = math_Lerp(startY, endY, alpha);
