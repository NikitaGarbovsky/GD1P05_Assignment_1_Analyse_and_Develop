
currentLerpTime += 1 / 300;

var alpha = currentLerpTime / lerpTime;

	x = math_CubicBezier(startX, 201, 268 , endX, alpha);
	y = math_CubicBezier(startY, 770, 539 , endY, alpha);
