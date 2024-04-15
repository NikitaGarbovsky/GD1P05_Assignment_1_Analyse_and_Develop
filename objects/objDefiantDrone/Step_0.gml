
currentLerpTime += 1 / 60;

var alpha = currentLerpTime / lerpTime;

	x = math_QuadraticBezier(startX, 737 , endX, alpha);
	y = math_QuadraticBezier(startY, 539 , endY, alpha);
