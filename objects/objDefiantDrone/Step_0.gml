
if (m_MovingState == true)
{
	// Checks if the drone is on the spline track AND the moving state
	if(m_SplineTrack == true && m_MovingState == true)
	{
		
		travelTime += 1 / objDefiantDroneManager.m_SplineTrackSpeed;

		var normalizedTravelTime = travelTime % 1;
		var currentBezierCurve = (floor(travelTime) * 3) % (array_length(rightSplinePoints) - 1);
		
		if(m_RightSideTrack == true)
		{
		x = math_CubicBezier(rightSplinePoints[currentBezierCurve].splinePointX, 
							rightSplinePoints[currentBezierCurve+1].splinePointX, 
							rightSplinePoints[currentBezierCurve+2].splinePointX, 
							rightSplinePoints[currentBezierCurve+3].splinePointX, 
							normalizedTravelTime);

		y = math_CubicBezier(rightSplinePoints[currentBezierCurve].splinePointY, 
							rightSplinePoints[currentBezierCurve+1].splinePointY, 
							rightSplinePoints[currentBezierCurve+2].splinePointY, 
							rightSplinePoints[currentBezierCurve+3].splinePointY, 
							normalizedTravelTime);
		}
		else if (m_LeftSideTrack == true)
		{
		x = math_CubicBezier(leftSplinePoints[currentBezierCurve].splinePointX, 
							leftSplinePoints[currentBezierCurve+1].splinePointX, 
							leftSplinePoints[currentBezierCurve+2].splinePointX, 
							leftSplinePoints[currentBezierCurve+3].splinePointX, 
							normalizedTravelTime);

		y = math_CubicBezier(leftSplinePoints[currentBezierCurve].splinePointY, 
							leftSplinePoints[currentBezierCurve+1].splinePointY, 
							leftSplinePoints[currentBezierCurve+2].splinePointY, 
							leftSplinePoints[currentBezierCurve+3].splinePointY, 
							normalizedTravelTime);
		}
	}
	// Checks if the drone is on the bezier track AND the moving state
	else if (m_BezierTrack == true && m_MovingState == true)
	{
		travelTime += 1 / objDefiantDroneManager.m_BezierTrackSpeed;
	
		var alpha = travelTime / 1;
	
		x = math_CubicBezier(rightSplinePoints[0].splinePointX, 
							rightSplinePoints[1].splinePointX, 
							rightSplinePoints[2].splinePointX, 
							rightSplinePoints[3].splinePointX,
							alpha);
		y = math_CubicBezier(rightSplinePoints[0].splinePointY, 
								rightSplinePoints[1].splinePointY,
								rightSplinePoints[2].splinePointY,
								rightSplinePoints[3].splinePointY,
							alpha);
	}
}
if (m_AttackingState == true)
{
	
}