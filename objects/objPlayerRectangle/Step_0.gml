// Sets the speed of going through sprite frame.
image_speed = m_PlayerRectangleSpinSpeed;

switch (m_RectangleOrder)
{
	case 1 : 
	{
		x = objPlayer.x - 88;
		y = objPlayer.y - 77;
		break;
	}
	case 2 : 
	{
		x = objPlayer.x + 88;
		y = objPlayer.y - 77;
		break;
	}
	case 3 : 
	{
		x = objPlayer.x + 120;
		y = objPlayer.y;
		break;
	}
	case 4 : 
	{
		x = objPlayer.x - 120;
		y = objPlayer.y;
		break;
	}
}
switch (objPlayer.m_Orbs)
{
	case 1 :
	m_PlayerRectangleSpinSpeed = 0.1;
	break;
	case 2 :
	m_PlayerRectangleSpinSpeed = 0.2;
	break;
	case 3 :
	m_PlayerRectangleSpinSpeed = 0.3;
	break;
	case 4 : 
	m_PlayerRectangleSpinSpeed = 0.4;
	break;
	case 5 :
	m_PlayerRectangleSpinSpeed = 0.5;
	break;
}




