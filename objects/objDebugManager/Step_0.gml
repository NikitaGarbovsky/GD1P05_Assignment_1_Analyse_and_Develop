// Control + F to enable Debug mode
if (keyboard_check(vk_control))
{
	if(keyboard_check_pressed(ord("F")))
	{
		// Checks if the spline points are visible or not
		if(m_DebugMode == false)
		{
			m_DebugMode = true;
		}
		else if (m_DebugMode == true)
		{
			m_DebugMode = false;	
		}
	}
}
// Enables or disables the view of the sprint points based on if the debug mode is on or off 
if (m_DebugMode == false)
{
	objSplinePointRight1.image_alpha = 0;
	objSplinePointRight2.image_alpha = 0;
	objSplinePointRight3.image_alpha = 0;
	objSplinePointRight4.image_alpha = 0;
	objSplinePointRight5.image_alpha = 0;
	objSplinePointRight6.image_alpha = 0;
	objSplinePointRight7.image_alpha = 0;
	objSplinePointRight8.image_alpha = 0;
	objSplinePointRight9.image_alpha = 0;
	objSplinePointRight10.image_alpha = 0;
	objSplinePointRight11.image_alpha = 0;
	objSplinePointRight12.image_alpha = 0;
	objSplinePointRight13.image_alpha = 0;
	objSplinePointRight14.image_alpha = 0;
	objSplinePointRight15.image_alpha = 0;
	objSplinePointRight16.image_alpha = 0;
	
	objSplinePointLeft1.image_alpha = 0;
	objSplinePointLeft2.image_alpha = 0;
	objSplinePointLeft3.image_alpha = 0;
	objSplinePointLeft4.image_alpha = 0;
	objSplinePointLeft5.image_alpha = 0;
	objSplinePointLeft6.image_alpha = 0;
	objSplinePointLeft7.image_alpha = 0;
	objSplinePointLeft8.image_alpha = 0;
	objSplinePointLeft9.image_alpha = 0;
	objSplinePointLeft10.image_alpha = 0;
	objSplinePointLeft11.image_alpha = 0;
	objSplinePointLeft12.image_alpha = 0;
	objSplinePointLeft13.image_alpha = 0;
	objSplinePointLeft14.image_alpha = 0;
	objSplinePointLeft15.image_alpha = 0;
	objSplinePointLeft16.image_alpha = 0;

}
else if (m_DebugMode == true)
{
	objSplinePointRight1.image_alpha = 1;
	objSplinePointRight2.image_alpha = 1;
	objSplinePointRight3.image_alpha = 1;
	objSplinePointRight4.image_alpha = 1;
	objSplinePointRight5.image_alpha = 1;
	objSplinePointRight6.image_alpha = 1;
	objSplinePointRight7.image_alpha = 1;
	objSplinePointRight8.image_alpha = 1;
	objSplinePointRight9.image_alpha = 1;
	objSplinePointRight10.image_alpha = 1;
	objSplinePointRight11.image_alpha = 1;
	objSplinePointRight12.image_alpha = 1;
	objSplinePointRight13.image_alpha = 1;
	objSplinePointRight14.image_alpha = 1;
	objSplinePointRight15.image_alpha = 1;
	objSplinePointRight16.image_alpha = 1;
	
	objSplinePointLeft1.image_alpha = 1;
	objSplinePointLeft2.image_alpha = 1;
	objSplinePointLeft3.image_alpha = 1;
	objSplinePointLeft4.image_alpha = 1;
	objSplinePointLeft5.image_alpha = 1;
	objSplinePointLeft6.image_alpha = 1;
	objSplinePointLeft7.image_alpha = 1;
	objSplinePointLeft8.image_alpha = 1;
	objSplinePointLeft9.image_alpha = 1;
	objSplinePointLeft10.image_alpha = 1;
	objSplinePointLeft11.image_alpha = 1;
	objSplinePointLeft12.image_alpha = 1;
	objSplinePointLeft13.image_alpha = 1;
	objSplinePointLeft14.image_alpha = 1;
	objSplinePointLeft15.image_alpha = 1;
	objSplinePointLeft16.image_alpha = 1;
}

