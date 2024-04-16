
currentLerpTime += 1 / 300;

var alpha = currentLerpTime / lerpTime;

x = math_CubicBezier(startX, objSplinePoint2.x, objSplinePoint3.x , endX, alpha);
y = math_CubicBezier(startY, objSplinePoint2.y, objSplinePoint3.y , endY, alpha);
