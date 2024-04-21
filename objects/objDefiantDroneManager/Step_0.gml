// Turn on and off the SplinePoints sprites
if (keyboard_check_pressed(ord("F")))
{
	if(m_canSeeSplinePoints == false)
	{
		m_canSeeSplinePoints = true;
	}
	else if (m_canSeeSplinePoints == true)
	{
		m_canSeeSplinePoints = false;	
	}
}

if (m_canSeeSplinePoints == false)
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
else if (m_canSeeSplinePoints == true)
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




