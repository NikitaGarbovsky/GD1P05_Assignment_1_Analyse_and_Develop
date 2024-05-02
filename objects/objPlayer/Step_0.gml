Display_Glow();

if (keyboard_check(vk_left) || keyboard_check(ord("A")))
{
	if(x >= 100)
	{
		x -= m_PlayerShipMovementSpeed;	
	}
}
if (keyboard_check(vk_right) || keyboard_check(ord("D")))
{
	if(x <= 900)
	{
		x += m_PlayerShipMovementSpeed;	
	}
}
// Launch projectile/s at player ship location
if (keyboard_check_pressed(vk_space) && image_index >= 12) 
{
	switch (m_Orbs)
	{
		case 1:
		{
			ShootBaseShot();
			image_index = 0;
			break;
		}
		case 2:
		{
			ShootBaseShot();
			ShootSecondShot();
			image_index = 0;
			break;
		}
		case 3:
		{
			ShootBaseShot();
			ShootSecondShot();
			ShootThirdShot();
			image_index = 0;
			break;
		}
		case 4:
		{
			ShootBaseShot();
			ShootSecondShot();
			ShootThirdShot();
			ShootFourthShot();
			image_index = 0;
			break;
		}
		case 5:
		{
			ShootBaseShot();
			ShootSecondShot();
			ShootThirdShot();
			ShootFourthShot();
			ShootFifthShot();
			image_index = 0;
			break;
		}
	}
	if(m_SuperChargedAttack == true)
	{
		audio_play_sound(m_SuperChargedAttackSound, 0,0);
		instance_create_layer(x, y-30, layer, objSuperChargedPlayerProjectile);
		image_index = 0;
	}
	
}
switch (m_Orbs)
{
	case 1:
	{
		m_PlayerShipShootingSpeed = 0.2;
		sprite_index = sprPlayerShipOrb1_Sheet;
		m_PlayerShipMovementSpeed = 8;
		break;
	}
	case 2:
	{
		m_PlayerShipShootingSpeed = 0.4;
		sprite_index = sprPlayerShipOrb2_Sheet;
		m_PlayerShipMovementSpeed = 9;
		break;
	}
	case 3:
	{
		m_PlayerShipShootingSpeed = 0.6;
		sprite_index = sprPlayerShipOrb3_Sheet;
		m_PlayerShipMovementSpeed = 10;
		break;
	}
	case 4:
	{
		m_PlayerShipShootingSpeed = 0.8;
		sprite_index = sprPlayerShipOrb4_Sheet;
		m_PlayerShipMovementSpeed = 11;
		break;
	}
	case 5:
	{
		m_PlayerShipShootingSpeed = 1;
		sprite_index = sprPlayerShipOrb5_Sheet;
		m_PlayerShipMovementSpeed = 12;
		break;
	}
}

// Assigns the speed of going through the objects sprites based off the shooting speed 
if !(image_index > 12)
{
	image_speed = m_PlayerShipShootingSpeed;
}
else 
{
	image_speed = 0;
}
with (objDrone)
{
	var dist = getDistance(x,y,other.x, other.y);
	// If this distance is less than (drone radius plus this projectile radius)
	if (dist < (m_droneCollisionRadius + other.m_PlayerShipCollisionRadius))
	{	
		instance_destroy(objPlayer);
		audio_play_sound(soundDefiantDroneExplosion,0,0);
	}
}
