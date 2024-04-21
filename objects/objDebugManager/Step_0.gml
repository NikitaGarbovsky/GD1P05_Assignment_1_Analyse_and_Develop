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
	objSplinePoint1.image_alpha = 0;
	objSplinePoint2.image_alpha = 0;
	objSplinePoint3.image_alpha = 0;
	objSplinePoint4.image_alpha = 0;
	objSplinePoint5.image_alpha = 0;
	objSplinePoint6.image_alpha = 0;
	objSplinePoint7.image_alpha = 0;
	objSplinePoint8.image_alpha = 0;
	objSplinePoint9.image_alpha = 0;
	objSplinePoint10.image_alpha = 0;
	objSplinePoint11.image_alpha = 0;
	objSplinePoint12.image_alpha = 0;
	objSplinePoint13.image_alpha = 0;
	objSplinePoint14.image_alpha = 0;
	objSplinePoint15.image_alpha = 0;
	objSplinePoint16.image_alpha = 0;

}
else if (m_DebugMode == true)
{
	objSplinePoint1.image_alpha = 1;
	objSplinePoint2.image_alpha = 1;
	objSplinePoint3.image_alpha = 1;
	objSplinePoint4.image_alpha = 1;
	objSplinePoint5.image_alpha = 1;
	objSplinePoint6.image_alpha = 1;
	objSplinePoint7.image_alpha = 1;
	objSplinePoint8.image_alpha = 1;
	objSplinePoint9.image_alpha = 1;
	objSplinePoint10.image_alpha = 1;
	objSplinePoint11.image_alpha = 1;
	objSplinePoint12.image_alpha = 1;
	objSplinePoint13.image_alpha = 1;
	objSplinePoint14.image_alpha = 1;
	objSplinePoint15.image_alpha = 1;
	objSplinePoint16.image_alpha = 1;
}

