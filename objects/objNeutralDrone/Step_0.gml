

// 
if (image_index >= 11 && image_index < 11.3)
{
	instance_create_layer(x+3, y-30, layer_get_id("Layer_SplineTrackRight"), objNeutralDroneProjectile);	
}

switch (objPlayer.m_Orbs)
{
	case 1 :
	m_DefiantDroneSpinSpeed = 0.1;
	break;
	case 2 :
	m_DefiantDroneSpinSpeed = 0.2;
	break;
	case 3 :
	m_DefiantDroneSpinSpeed = 0.3;
	break;
	case 4 : 
	m_DefiantDroneSpinSpeed = 0.4;
	break;
	case 5 :
	m_DefiantDroneSpinSpeed = 0.5;
	break;
}

image_speed = m_DefiantDroneSpinSpeed;

