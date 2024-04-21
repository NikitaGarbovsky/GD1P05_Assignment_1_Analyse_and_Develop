
// Checks if the drone is on the spline track AND the moving state
if(m_SplineTrack == true && m_MovingState == true)
{
	travelTime += 1 / objDefiantDroneManager.m_SplineTrackSpeed;

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

}
// Checks if the drone is on the bezier track AND the moving state
else if (m_BezierTrack == true && m_MovingState == true)
{
	travelTime += 1 / objDefiantDroneManager.m_BezierTrackSpeed;
	
	var alpha = travelTime / 1;
	
	x = math_CubicBezier(splinePoints[0].splinePointX, 
						splinePoints[1].splinePointX, 
						splinePoints[2].splinePointX, 
						splinePoints[3].splinePointX,
						alpha);
	y = math_CubicBezier(splinePoints[0].splinePointY, 
							splinePoints[1].splinePointY,
							splinePoints[2].splinePointY,
							splinePoints[3].splinePointY,
						alpha);
}

if (m_AttackingPlayerState == true)
{
	
}