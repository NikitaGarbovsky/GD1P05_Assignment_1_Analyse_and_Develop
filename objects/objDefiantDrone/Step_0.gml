// The moving state of the defiant drone. 
// Moves through the spline or bezier curve track
if (m_MovingState == true)
{
	// Checks for collision on the players projectile.
	if collision_ellipse(x-21,y-74,x+21,y+74, objBasePlayerProjectile, true, true) != noone
	{
		instance_destroy(objBasePlayerProjectile);
		
		m_AttackingState = true;
		m_MovingState = false;
		objPlayer.m_SuperChargedAttack = true;
		audio_play_sound(m_SoundDestroyShield,0,0);
		audio_play_sound(m_SoundDefiantDroneAlarm, 0, 0);
		objPlayer.glowShown = false;
	}
	// Checks for collision on the reflected projectiles
	if collision_ellipse(x-21,y-74,x+21,y+74, objReflectedPlayerProjectile, true, true) != noone
	{
		instance_destroy(objReflectedPlayerProjectile);
		
		m_AttackingState = true;
		m_MovingState = false;
		objPlayer.m_SuperChargedAttack = true;
		audio_play_sound(m_SoundDestroyShield,0,0);
		audio_play_sound(m_SoundDefiantDroneAlarm, 0, 0);
	}
	// Checks for collision with drones to apply a shield to them
	if collision_ellipse(x-21,y-74,x+21,y+74, objDrone, true, true) != noone
	{
		var collidedDrone = instance_nearest(x,y,objDrone)
		if (collidedDrone.m_droneIsShielded == false)
		{
			collidedDrone.m_droneIsShielded = true;
			audio_play_sound(soundDroneGainShield,0,0)
		}
	}
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
	
		// Checks if the defiant drone is going to move through the right bezier curve track
		if(m_RightSideTrack == true)
		{
		x = math_CubicBezier(rightSplinePoints[8].splinePointX, 
							rightSplinePoints[9].splinePointX, 
							rightSplinePoints[10].splinePointX, 
							rightSplinePoints[11].splinePointX,
							alpha);
		y = math_CubicBezier(rightSplinePoints[8].splinePointY, 
								rightSplinePoints[9].splinePointY,
								rightSplinePoints[10].splinePointY,
								rightSplinePoints[11].splinePointY,
							alpha);
		}
		// Checks if the defiant drone is going ot move through the left bezier curve track
		else if (m_LeftSideTrack == true)
		{
		x = math_CubicBezier(leftSplinePoints[8].splinePointX, 
							leftSplinePoints[9].splinePointX, 
							leftSplinePoints[10].splinePointX, 
							leftSplinePoints[11].splinePointX,
							alpha);
		y = math_CubicBezier(leftSplinePoints[8].splinePointY, 
							leftSplinePoints[9].splinePointY,
							leftSplinePoints[10].splinePointY,
							leftSplinePoints[11].splinePointY,
							alpha);
		}
	}
}
// After the shield is destroyed, the defiant drone will move towards the player ship attacking them
else if (m_AttackingState == true)
{
	if collision_ellipse(x-16,y-61,x+16,y+61, objBasePlayerProjectile, true, true) != noone
	{
		var nearestShot = instance_nearest(x,y,objBasePlayerProjectile)
		instance_destroy(nearestShot);
		instance_destroy(self);
	}
	else if collision_ellipse(x-16,y-61,x+16,y+61, objSuperChargedPlayerProjectile, true, true) != noone
	{
		instance_destroy(self);
		objPlayer.m_SuperChargedAttack = false;
	}
	else if collision_ellipse(x-16,y-61,x+16,y+61, objReflectedPlayerProjectile, true, true) != noone
	{
		var nearestShot = instance_nearest(x,y,objReflectedPlayerProjectile)
		instance_destroy(nearestShot);
		instance_destroy(self);
	}
	sprite_index = sprHostileDefiantDroneEnemy;
	travelTime += 1; 
	if instance_exists(objPlayer)
	{
		if (travelTime >= 200) // The defiant drone pauses briefly before attacking
		{
			// Calculates the speed to lerp towards the player
			var alpha = travelTime / objDefiantDroneManager.m_LerpTowardsPlayerSpeed;
			x = math_Lerp(x,objPlayer.x,alpha);
			y = math_Lerp(y,objPlayer.y,alpha);
		}
	}
	if collision_ellipse(x-16,y-61,x+16,y+61, objPlayer, true, true)
	{
		instance_destroy(self);
		audio_play_sound(m_SoundDefiantDroneExplosion,0,0);
		instance_destroy(objPlayer);
		instance_destroy(objPlayerRectangle);
		instance_destroy(objChargedShotGlowEffect);
		audio_stop_sound(soundMainLevelSoundTrack);
	}
}