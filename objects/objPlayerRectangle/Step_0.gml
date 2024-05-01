// Sets the speed of going through sprite frame.
image_speed = m_PlayerRectangleSpinSpeed;

// Manages where the rectangle is located at all times,
// based on which order of rectangles it is from 1-4.
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
// Changes the spin speed of the rectangles based off the amount of orbs the player has
switch (objPlayer.m_Orbs)
{
	case 2 :
		if (m_RectangleOrder == 1 || m_RectangleOrder == 3)
		{
			m_PlayerRectangleSpinSpeed = - 0.2;
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
	case 5 : 
		if (m_RectangleOrder == 1 || m_RectangleOrder == 3)
		{
			m_PlayerRectangleSpinSpeed = -0.5;
		}
		else
		{
			m_PlayerRectangleSpinSpeed = 0.5;
		}
		break;
}

// Sets the rectangular collision coordinates of this object.
m_NDroneX1 = x - 35;
m_NDroneX2 = x + 35;
m_NDroneY1 = y - 51;
m_NDroneY2 = y + 51;

if(self.m_DeflectShot == true)
{
	SpawnProjectileUpward();
	self.m_DeflectShot = false;
}