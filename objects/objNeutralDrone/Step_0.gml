// Sets the speed of going through frame.
image_speed = m_DefiantDroneSpinSpeed;

// Shoots a projectile towards the player at the end of the sprite_sheet frames.
if (image_index >= 11 && image_index < 11.3)
{
	instance_create_layer(x+3, y-30, layer_get_id("Layer_SplineTrackRight"), objNeutralDroneProjectile);	
}

// The rectangular collision coordinates of this object.
x1 = x - 21;
x2 = x + 22;
y1 = y - 51;
y2 = y + 51;

// Switch statement to manage difficulty of this enemy, 
// which is based off the amount of orbs the player has.
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



