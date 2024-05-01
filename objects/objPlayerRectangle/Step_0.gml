// Sets the speed of going through sprite frame.
image_speed = m_PlayerRectangleSpinSpeed;

// Manages where the rectangle is located at all times,
// based on which order of rectangle 
switch (m_RectangleOrder)
{
	case 1 : 
	{
		x = objPlayer.x - 58;
		y = objPlayer.y - 77;
		break;
	}
	case 2 : 
	{
		x = objPlayer.x + 58;
		y = objPlayer.y - 77;
		break;
	}
	case 3 : 
	{
		x = objPlayer.x - 120;
		y = objPlayer.y;
		break;
	}
	case 4 : 
	{
		x = objPlayer.x + 120;
		y = objPlayer.y;
		break;
	}
}
switch (objPlayer.m_Orbs)
{
	case 1 :
		if (m_RectangleOrder == 1 || m_RectangleOrder == 3)
		{
			m_PlayerRectangleSpinSpeed = -0.1;
		}
		else
		{
			m_PlayerRectangleSpinSpeed = 0.1;
		}
		break;
	case 2 :
		if (m_RectangleOrder == 1 || m_RectangleOrder == 3)
		{
			m_PlayerRectangleSpinSpeed = -0.2;
		}
		else
		{
			m_PlayerRectangleSpinSpeed = 0.2;
		}
		break;
	case 3 :
		if (m_RectangleOrder == 1 || m_RectangleOrder == 3)
		{
			m_PlayerRectangleSpinSpeed = -0.3;
		}
		else
		{
			m_PlayerRectangleSpinSpeed = 0.3;
		}
		break;
	case 4 : 
		if (m_RectangleOrder == 1 || m_RectangleOrder == 3)
		{
			m_PlayerRectangleSpinSpeed = -0.4;
		}
		else
		{
			m_PlayerRectangleSpinSpeed = 0.4;
		}
		break;
}




