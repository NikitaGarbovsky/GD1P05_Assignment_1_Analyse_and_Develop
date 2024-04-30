// Sets the speed of going through sprite frame.
image_speed = m_DefiantDroneSpinSpeed;

// Shoots a projectile towards the player at the end of the sprite_sheet frames.
if (image_index >= 11 && image_index < 11.3)
{
	instance_create_layer(x+3, y-30, layer_get_id("Layer_SplineTrackRight"), objNeutralDroneProjectile);	
}

// Sets the rectangular collision coordinates of this object.
m_NDroneX1 = x - 35;
m_NDroneX2 = x + 35;
m_NDroneY1 = y - 51;
m_NDroneY2 = y + 51;

if instance_exists(objSuperChargedPlayerProjectile)
{
	var projectile = instance_nearest(x, y, objSuperChargedPlayerProjectile)
	if(projectile.m_x1 >= m_NDroneX1 && projectile.m_x2 <= m_NDroneX2 )
	{
		if(projectile.m_y1 >= m_NDroneY1 && projectile.m_y2 <= m_NDroneY2 )
		{
			instance_destroy();
		}
	}
}

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

if(self.m_DeflectShot == true)
{
	SpawnProjectileDownward();
	self.m_DeflectShot = false;
}


