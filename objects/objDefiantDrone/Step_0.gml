
travelTime += 1 / 300;

var normalizedTravelTime = travelTime % 1;

var currentBezierCurve = (floor(travelTime) * 3) % (array_length(splinePoints) - 1);
	
x = math_CubicBezier(splinePoints[currentBezierCurve].splinePointX, 
					splinePoints[currentBezierCurve+1].splinePointX, 
					splinePoints[currentBezierCurve+2].splinePointX, 
					splinePoints[currentBezierCurve+3].splinePointX, 
					normalizedTravelTime);


y = math_CubicBezier(splinePoints[currentBezierCurve].splinePointY, 
					splinePoints[currentBezierCurve+1].splinePointY, 
					splinePoints[currentBezierCurve+2].splinePointY, 
					splinePoints[currentBezierCurve+3].splinePointY, 
					normalizedTravelTime);

